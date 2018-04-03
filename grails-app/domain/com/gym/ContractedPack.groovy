package com.gym

class ContractedPack {

    User user
    String barCode
    Date contractStartDate
    Date contractEndDate
    Integer credit = 0
    double priceTotal
    double price
    double debt
    double payment
    boolean free
    String comment
    Integer assistedClasses = 0

    static constraints = {
        user(nullable: false)
        barCode(nullable: true)
        credit(nullable: false, size: 1..2, min: 0, max: 60)
        free(nullable: false)
        comment(nullable: true, size: 0..1000)
        debt(nullable: true)
        payment(nullable: true)
        priceTotal(nullable: true)
        assistedClasses(nullable: true, size: 1..2, min: 0, max: 60)
    }

    static hasMany = [
            activity : Activity,
            typeActivity : TypeActivity
    ]

    Boolean isExpiredCredential() {
        if (DateUtils.nowDateTrimeTime() > contractEndDate) {
            return true
        }
        return false
    }

    Integer getRemainingClasses(){
        return credit - assistedClasses
    }

    String getListActivity(){
        return activity.title
    }

    String getListTypeActivity(){
        return typeActivity.title
    }
}