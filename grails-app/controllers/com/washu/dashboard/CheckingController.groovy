package com.washu.dashboard

import grails.plugin.springsecurity.annotation.Secured


@Secured(['ROLE_ADMIN'])
class CheckingController
{
    def index() {

    }

}
