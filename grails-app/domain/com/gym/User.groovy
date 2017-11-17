package com.gym

class User {

    String username
    String name
    String lastName
    String password
    String address
    String email
    String phoneNumber
    String sex

    static constraints = {
        username(blank: false, unique: true)
        name(nullable: false, size: 0..50)
        lastName(nullable: false, size: 0..50)
        password(nullable: true, blank: true, password: true)
        address(nullable: true, blank: true)
        email(nullable: true, email: true, size: 0..50)
        phoneNumber(nullable: true)
        sex(nullable: false, inList: ["M", "F"], size: 1..1)
    }
}