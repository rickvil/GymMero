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
        response.setHeader("Content-Disposition", "Attachment;Filename=\"asistencia_socio.xls\"")
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

    def paymentByContractedPack(Long id){
        response.setHeader("Content-Disposition", "Attachment;Filename=\"pagos_socio.xls\"")
        ContractedPack contractedPack = ContractedPack.get(id)
        List<Payment> payments = Payment.findAllByContractedPack(contractedPack, [sort: "dayPayment", order: "desc"])
        InputStream is = assetResourceLocator.findAssetForURI("payment_user_template.xls").inputStream
        def os = response.outputStream
        Context context = new Context()
        context.putVar("payments", payments)
        context.putVar("contractedPack", contractedPack)
        JxlsHelper.getInstance().processTemplate(is, os, context)

        response.setContentType("application/vnd.ms-excel")
        response.outputStream.flush()
        response.outputStream.close()
    }

    def assistence(BetweenDateDto betweenDateDto){
        response.setHeader("Content-Disposition", "Attachment;Filename=\"asistencias_lista_socios.xls\"")
        Date starDate = DateUtils.trimTime(betweenDateDto.fromDate)
        Date endDate = DateUtils.endOfTheDay(betweenDateDto.untilDate)

        List<Assistance> assistances = Assistance.findAllByDateAssistanceBetween(starDate, endDate, [sort: "dateAssistance", order: "desc"])
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
        response.setHeader("Content-Disposition", "Attachment;Filename=\"pack_contratados_lista_socios.xls\"")
        Date starDate = DateUtils.trimTime(betweenDateDto.fromDate)
        Date endDate = DateUtils.endOfTheDay(betweenDateDto.untilDate)

        List<ContractedPack> contractedPackList = ContractedPack.findAllByContractStartDateBetween(starDate, endDate, [sort: "contractStartDate", order: "desc"])
        InputStream is = assetResourceLocator.findAssetForURI("contracted_pack_list_user_template.xls").inputStream
        def os = response.outputStream
        Context context = new Context()
        context.putVar("contractedPackList", contractedPackList)
        context.putVar("totalUser", contractedPackList.size())
        context.putVar("fromDate", new SimpleDateFormat("dd-MM-yyyy").format(betweenDateDto.fromDate))
        context.putVar("untilDate", new SimpleDateFormat("dd-MM-yyyy").format(betweenDateDto.untilDate))
        JxlsHelper.getInstance().processTemplate(is, os, context)

        response.setContentType("application/vnd.ms-excel")
        response.outputStream.flush()
        response.outputStream.close()
    }

    def payment(BetweenDateDto betweenDateDto){
        response.setHeader("Content-Disposition", "Attachment;Filename=\"pagos.xls\"")
        Date starDate = DateUtils.trimTime(betweenDateDto.fromDate)
        Date endDate = DateUtils.endOfTheDay(betweenDateDto.untilDate)

        List<Payment> payments = Payment.findAllByDayPaymentBetween(starDate, endDate, [sort: "dayPayment", order: "desc"])
        InputStream is = assetResourceLocator.findAssetForURI("payments_template.xls").inputStream
        def os = response.outputStream
        Context context = new Context()
        context.putVar("payments", payments)
        context.putVar("totalPayments", payments.size())
        context.putVar("fromDate", new SimpleDateFormat("dd-MM-yyyy").format(betweenDateDto.fromDate))
        context.putVar("untilDate", new SimpleDateFormat("dd-MM-yyyy").format(betweenDateDto.untilDate))
        JxlsHelper.getInstance().processTemplate(is, os, context)

        response.setContentType("application/vnd.ms-excel")
        response.outputStream.flush()
        response.outputStream.close()
    }

    def debt(BetweenDateDto betweenDateDto){
        response.setHeader("Content-Disposition", "Attachment;Filename=\"deudores.xls\"")
        Date starDate = DateUtils.trimTime(betweenDateDto.fromDate)
        Date endDate = DateUtils.endOfTheDay(betweenDateDto.untilDate)

        List<ContractedPack> contractedPacks = ContractedPack.findAllByDebtNotEqualAndContractStartDateBetween(0, starDate, endDate, [sort: "contractStartDate", order: "desc"])
        InputStream is = assetResourceLocator.findAssetForURI("debts_template.xls").inputStream
        def os = response.outputStream
        Context context = new Context()
        context.putVar("contractedPacks", contractedPacks)
        context.putVar("totalDebt", contractedPacks.size())
        context.putVar("fromDate", new SimpleDateFormat("dd-MM-yyyy").format(betweenDateDto.fromDate))
        context.putVar("untilDate", new SimpleDateFormat("dd-MM-yyyy").format(betweenDateDto.untilDate))
        JxlsHelper.getInstance().processTemplate(is, os, context)

        response.setContentType("application/vnd.ms-excel")
        response.outputStream.flush()
        response.outputStream.close()
    }
}