package com.gym

class User {

    String dni
    String name
    String lastName
    Date birthday
    String password
    String phoneNumber
    String sex
    String email
    boolean active = true

    static constraints = {
        dni(blank: false, unique: true)
        name(nullable: false, size: 0..50)
        lastName(nullable: false, size: 0..50)
        birthday(nullable: true, max: new Date())
        password(nullable: true, blank: true, password: true)
        phoneNumber(nullable: true)
        sex(nullable: false, inList: ["M", "F"], size: 1..1)
        email(nullable: true, email: true, size: 0..50)
        active(nullable: false)
    }

    def Integer getEdad() {
        if (birthday) {
            return Math.floor((new Date() - birthday) / 365)
        } else {
            return null;
        }
    }

    Boolean isOver16Years() {
        def age = getEdad()
        if (!age || age < 16) {
            return false
        }
        return true
    }

    Boolean isOver18Years() {
        def age = getEdad()
        if (!age || age < 18) {
            return false
        }
        return true
    }

    Boolean isNowBirthday() {
        return DateUtils.isBirthdayNow(birthday)
    }

    String getCompleteName(){
        return  name + " " + lastName
    }
}