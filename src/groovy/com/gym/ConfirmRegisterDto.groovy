package com.gym

import grails.validation.Validateable

@Validateable
class ConfirmRegisterDto {
    String credentialInstructor
    String credentialUser
}
