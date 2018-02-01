package com.gym

class CredentialController {

    def index() {
        println("cargando credential")
        ContractedPack contractedPack = ContractedPack.get(2)
        respond contractedPack.user, model:[contractedPack: contractedPack]
    }
}
