package com.washu.dashboard

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN','ROLE_USER'])
class CenterController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Center.list(params), model:[centerInstanceCount: Center.count()]
    }

    def show(Center centerInstance) {
        respond centerInstance
    }

    def create() {
        respond new Center(params)
    }

    @Transactional
    def save(Center centerInstance) {
        if (centerInstance == null) {
            notFound()
            return
        }

        if (centerInstance.hasErrors()) {
            respond centerInstance.errors, view:'create'
            return
        }

        centerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'center.label', default: 'Center'), centerInstance.id])
                redirect centerInstance
            }
            '*' { respond centerInstance, [status: CREATED] }
        }
    }

    def edit(Center centerInstance) {
        respond centerInstance
    }

    @Transactional
    def update(Center centerInstance) {
        if (centerInstance == null) {
            notFound()
            return
        }

        if (centerInstance.hasErrors()) {
            respond centerInstance.errors, view:'edit'
            return
        }

        centerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Center.label', default: 'Center'), centerInstance.id])
                redirect centerInstance
            }
            '*'{ respond centerInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Center centerInstance) {

        if (centerInstance == null) {
            notFound()
            return
        }

        centerInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Center.label', default: 'Center'), centerInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'center.label', default: 'Center'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
