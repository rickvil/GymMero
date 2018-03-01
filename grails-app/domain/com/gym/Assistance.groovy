package com.gym

class Assistance {

    ContractedPack contractedPack
    Date dateAssistance
    String authorizedBy

    static constraints = {
        contractedPack(nullable: false)
        dateAssistance(nullable: false)
        authorizedBy(nullable: false)
    }
}
