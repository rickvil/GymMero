package com.gym

class Payment {

    double amount
    Date dayPayment
    User user
    ContractedPack contractedPack
    String comment


    static constraints = {
        contractedPack nullable: true
        user nullable: true
    }
}
