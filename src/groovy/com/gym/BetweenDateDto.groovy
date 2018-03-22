package com.gym

import grails.validation.Validateable

@Validateable
class BetweenDateDto {
    Date fromDate
    Date untilDate
}