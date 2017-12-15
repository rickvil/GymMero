package com.gym

class ContractedPack {

    User user
    Activity activity
    TypeActivity typeActivity
    String barCode
    Date contractStartDate
    Date contractEndDate
    Integer credit
    double price
    boolean free
    String comment

    static constraints = {
        user(nullable: false)
        activity(nullable: false)
        typeActivity(nullable: false)
        barCode(nullable: true)
        credit(nullable: true, size: 1..2, min: 0, max: 60)
        free(nullable: false)
        comment(nullable: true, size: 0..1000)
    }
}