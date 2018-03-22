package com.gym



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ContractedPackController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ContractedPack.list(params), model:[contractedPackInstanceCount: ContractedPack.count()]
    }

    def show(ContractedPack contractedPackInstance) {
        def assistanceInstanceList = Assistance.findAllByContractedPack(contractedPackInstance,  [sort: "dateAssistance", order: "desc"])
        respond contractedPackInstance, model: [assistanceInstanceList: assistanceInstanceList]
    }

    def create(User userInstance) {
        ContractedPack contractedPack = new ContractedPack(params)
        contractedPack.user = userInstance

        def lastRecord = ContractedPack.list(max: 1, sort: "id", order: "desc")
        String lastId = lastRecord ? (lastRecord.get(0).id + 1).toString() : '0'
        contractedPack.barCode = lastId

        contractedPack.contractEndDate = new Date() + 30
        respond contractedPack
    }

    @Transactional
    def save(ContractedPack contractedPackInstance) {
        if (contractedPackInstance == null) {
            notFound()
            return
        }

        if (contractedPackInstance.hasErrors()) {
            respond contractedPackInstance.errors, view:'create'
            return
        }

        contractedPackInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'contractedPack.label', default: 'ContractedPack'), contractedPackInstance.id])
                redirect contractedPackInstance
            }
            '*' { respond contractedPackInstance, [status: CREATED] }
        }
    }

    def edit(ContractedPack contractedPackInstance) {
        respond contractedPackInstance
    }

    @Transactional
    def update(ContractedPack contractedPackInstance) {
        if (contractedPackInstance == null) {
            notFound()
            return
        }

        if (contractedPackInstance.hasErrors()) {
            respond contractedPackInstance.errors, view:'edit'
            return
        }

        contractedPackInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ContractedPack.label', default: 'ContractedPack'), contractedPackInstance.id])
                redirect contractedPackInstance
            }
            '*'{ respond contractedPackInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ContractedPack contractedPackInstance) {

        if (contractedPackInstance == null) {
            notFound()
            return
        }

        User user = contractedPackInstance.user
        contractedPackInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ContractedPack.label', default: 'ContractedPack'), contractedPackInstance.id])
                redirect(controller: "user",  action: "show", id: user.id)
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'contractedPack.label', default: 'ContractedPack'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
