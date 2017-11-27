package com.gym

class TypeActivity {

    String title

    static constraints = {
        title(nullable: false, size: 0..50)
    }
}