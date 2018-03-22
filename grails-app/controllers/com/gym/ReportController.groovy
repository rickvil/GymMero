package com.gym


import org.jxls.util.JxlsHelper
import org.jxls.common.Context

class ReportController {

    def assetResourceLocator

    def index(BetweenDateDto betweenDateDto) {
        betweenDateDto.fromDate = (new Date() - 5)
        betweenDateDto.untilDate = new Date()

        println("index betweenDateDto.fromDate: " + betweenDateDto.fromDate)
        println("index betweenDateDto.untilDate: " + betweenDateDto.untilDate)
//        return [betweenDateDto: betweenDateDto]
        [betweenDateDto: betweenDateDto]
    }

    def assistence(BetweenDateDto betweenDateDto){
        println("assistence betweenDateDto.fromDate: " + betweenDateDto.fromDate)
        println("assistence betweenDateDto.untilDate: " + betweenDateDto.untilDate)
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

    def assistenceByContractedPack(Long id){
        response.setHeader("Content-Disposition", "Attachment;Filename=\"asistencia.xls\"")
        ContractedPack contractedPack = ContractedPack.get(id)
        List<Assistance> assistances = Assistance.findAllByContractedPack(contractedPack, [sort: "dateAssistance", order: "desc"])
        InputStream is = assetResourceLocator.findAssetForURI("assistance_template.xls").inputStream
        def os = response.outputStream
        Context context = new Context()
        context.putVar("assistances", assistances)
        context.putVar("contractedPack", contractedPack)
        JxlsHelper.getInstance().processTemplate(is, os, context)

        response.setContentType("application/vnd.ms-excel")
        response.outputStream.flush()
        response.outputStream.close()
    }

    def contracted(BetweenDateDto betweenDateDto){
        println("contracted betweenDateDto: " + betweenDateDto)
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
