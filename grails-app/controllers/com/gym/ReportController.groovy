package com.gym


import org.jxls.util.JxlsHelper
import org.jxls.common.Context

import java.text.SimpleDateFormat

class ReportController {

    def assetResourceLocator

    def index(BetweenDateDto betweenDateDto) {
        respond betweenDateDto
    }

    def assistenceByContractedPack(Long id){
        response.setHeader("Content-Disposition", "Attachment;Filename=\"assistance_user.xls\"")
        ContractedPack contractedPack = ContractedPack.get(id)
        List<Assistance> assistances = Assistance.findAllByContractedPack(contractedPack, [sort: "dateAssistance", order: "desc"])
        InputStream is = assetResourceLocator.findAssetForURI("assistance_user_template.xls").inputStream
        def os = response.outputStream
        Context context = new Context()
        context.putVar("assistances", assistances)
        context.putVar("contractedPack", contractedPack)
        JxlsHelper.getInstance().processTemplate(is, os, context)

        response.setContentType("application/vnd.ms-excel")
        response.outputStream.flush()
        response.outputStream.close()
    }

    def assistence(BetweenDateDto betweenDateDto){
        println("assistence betweenDateDto.fromDate: " + betweenDateDto.fromDate)
        println("assistence betweenDateDto.untilDate: " + betweenDateDto.untilDate)
        response.setHeader("Content-Disposition", "Attachment;Filename=\"assistances_list_user.xls\"")

        List<Assistance> assistances = Assistance.findAllByDateAssistanceBetween(betweenDateDto.fromDate, betweenDateDto.untilDate, [sort: "dateAssistance", order: "desc"])
        InputStream is = assetResourceLocator.findAssetForURI("assistances_list_user_template.xls").inputStream
        def os = response.outputStream
        Context context = new Context()
        context.putVar("assistances", assistances)
        context.putVar("totalUser", assistances.size())
        context.putVar("fromDate", new SimpleDateFormat("dd-MM-yyyy").format(betweenDateDto.fromDate))
        context.putVar("untilDate", new SimpleDateFormat("dd-MM-yyyy").format(betweenDateDto.untilDate))
        JxlsHelper.getInstance().processTemplate(is, os, context)

        response.setContentType("application/vnd.ms-excel")
        response.outputStream.flush()
        response.outputStream.close()
    }

    def contracted(BetweenDateDto betweenDateDto){
        println("contracted betweenDateDto.fromDate: " + betweenDateDto.fromDate)
        println("contracted betweenDateDto.untilDate: " + betweenDateDto.untilDate)

        response.setHeader("Content-Disposition", "Attachment;Filename=\"asistencia.xls\"")

        List<Assistance> employees = Assistance.getAll()
        InputStream is = assetResourceLocator.findAssetForURI("object_collection_template.xls").inputStream
        def os = response.outputStream
        Context context = new Context()
        context.putVar("employees", employees)
        JxlsHelper.getInstance().processTemplate(is, os, context)

        response.setContentType("application/vnd.ms-excel")
        response.outputStream.flush()
        response.outputStream.close()
    }
}