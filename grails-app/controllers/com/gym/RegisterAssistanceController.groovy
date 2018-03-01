package com.gym

class RegisterAssistanceController {

    def index() {
        respond view: 'index'
    }

    def validatedRegister(String credential){
        println("credential: " + credential)
        ContractedPack contractedPack = ContractedPack.findByBarCode(credential)
        println("contractedPack.userId: " + contractedPack.userId)
        println("contractedPack.user.id: " + contractedPack.user.name)
        respond contractedPack.user, model:[contractedPack: contractedPack, user: contractedPack.user], view:'validatedRegister'
    }
}