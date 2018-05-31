package com.gym

import static org.springframework.http.HttpStatus.OK

class AccountantController {

    def index(Payment payment) {
        println("index")
        def lastTenPayment = Payment.list(max: 10, sort: "id", order: "desc")
        respond new Payment(), model:[lastTenPayment: lastTenPayment]
    }

    def inputMoney(Payment paymentInstance) {
        println("inputMoney")
        paymentInstance.dayPayment = new Date()
        paymentInstance.save(flush: true)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ContractedPack.label', default: 'ContractedPack'), paymentInstance.id])
                redirect(controller: "accountant",  action: "index")
            }
            '*'{ respond paymentInstance, [status: OK] }
        }
    }

    def outputMoney(Payment paymentInstance) {
        println("outputMoney")
        paymentInstance.amount = paymentInstance.amount * -1
        paymentInstance.dayPayment = new Date()
        paymentInstance.save(flush: true)

        redirect(controller: "accountant",  action: "index")
    }
}