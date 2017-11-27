package com.gym

class Activity {

    String title

    static constraints = {
        title(nullable: false, size: 0..50)
    }
}