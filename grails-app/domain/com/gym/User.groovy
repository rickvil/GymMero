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
        name(nullable: true, size: 0..50)
        lastName(nullable: true, size: 0..50)
        password(blank: true)
        address(nullable: true, blank: true)
        email(nullable: true, email: true, size: 0..50)
        phoneNumber(nullable: true)
        sex(nullable: true, inList: ["M", "F"], size: 1..1)
    }
}