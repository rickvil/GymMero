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
        respond contractedPackInstance
    }

    def create(User userInstance) {
        ContractedPack contractedPack = new ContractedPack(params)
        contractedPack.user = userInstance
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

        contractedPackInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ContractedPack.label', default: 'ContractedPack'), contractedPackInstance.id])
                redirect action:"index", method:"GET"
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
