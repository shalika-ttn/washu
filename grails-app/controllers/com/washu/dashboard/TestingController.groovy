package com.washu.dashboard

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Secured(['ROLE_ADMIN','ROLE_USER'])
@Transactional(readOnly = true)
class TestingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Testing.list(params), model:[testingInstanceCount: Testing.count()]
    }

    def show(Testing testingInstance) {
        respond testingInstance
    }

    def create() {
        respond new Testing(params)
    }

    @Transactional
    def save(Testing testingInstance) {
        if (testingInstance == null) {
            notFound()
            return
        }

        if (testingInstance.hasErrors()) {
            respond testingInstance.errors, view:'create'
            return
        }

        testingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'testing.label', default: 'Testing'), testingInstance.id])
                redirect testingInstance
            }
            '*' { respond testingInstance, [status: CREATED] }
        }
    }

    def edit(Testing testingInstance) {
        respond testingInstance
    }

    @Transactional
    def update(Testing testingInstance) {
        if (testingInstance == null) {
            notFound()
            return
        }

        if (testingInstance.hasErrors()) {
            respond testingInstance.errors, view:'edit'
            return
        }

        testingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Testing.label', default: 'Testing'), testingInstance.id])
                redirect testingInstance
            }
            '*'{ respond testingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Testing testingInstance) {

        if (testingInstance == null) {
            notFound()
            return
        }

        testingInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Testing.label', default: 'Testing'), testingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'testing.label', default: 'Testing'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
