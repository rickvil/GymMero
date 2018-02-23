package com.gym



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
    }

    def findDni(String findDni) {
        println("findDni: " + findDni)
        if (findDni){
            params.max = Math.min(10, 100)
            respond User.findAllByDniLike("%"+findDni+"%", params), model:[userInstanceCount: 1, findDni: findDni], view:'index'
        }else{
            params.max = Math.min(10, 100)
            respond User.list(params), model:[userInstanceCount: User.count()], view:'index'
        }
    }

    def findLastName(String findLastName) {
        println("findLastName: " + findLastName)
        if (findLastName){
            params.max = Math.min(40, 100)
            respond User.findAllByLastNameLike("%"+findLastName+"%", params), model:[userInstanceCount: 1, findLastName: findLastName], view:'index'
        }else{
            params.max = Math.min(10, 100)
            respond User.list(params), model:[userInstanceCount: User.count()], view:'index'
        }
    }

    def show(User userInstance) {
        def contractedPackInstanceList = ContractedPack.findAllByUser(userInstance)
        respond userInstance, model:[contractedPackInstanceList: contractedPackInstanceList]
    }

    def create() {
        respond new User(params)
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.name = userInstance.name.toUpperCase()
        userInstance.lastName = userInstance.lastName.toUpperCase()
        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    def contractedPack(User userInstance){
        forward(controller: "contractedPack",  action: "create", params: userInstance)
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.name = userInstance.name.toUpperCase()
        userInstance.lastName = userInstance.lastName.toUpperCase()

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.active=false
        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    @Transactional
    def deletePhysical(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        def listContractedPackUser = ContractedPack.findAllByUser(userInstance)
        listContractedPackUser.each {it ->
            it.delete flush:true
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
