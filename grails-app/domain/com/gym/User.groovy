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

    static constraints = {
        dni(blank: false, unique: true)
        name(nullable: false, size: 0..50)
        lastName(nullable: false, size: 0..50)
        birthday(nullable: true, max: new Date())
        password(nullable: true, blank: true, password: true)
        phoneNumber(nullable: true)
        sex(nullable: false, inList: ["M", "F"], size: 1..1)
        email(nullable: true, email: true, size: 0..50)
    }
}