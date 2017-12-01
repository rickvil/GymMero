package com.gym

class ContractedPack {

    User user
    Activity activity
    TypeActivity typeActivity
    String barCode
    Date contractedDate
    Integer credit
    boolean free

    static constraints = {
        user(nullable: false)
        activity(nullable: false)
        typeActivity(nullable: false)
        barCode(nullable: true)
        credit(nullable: true, inList: [0, 8, 12, 20], size: 1..2)
        free(nullable: false)
    }
}