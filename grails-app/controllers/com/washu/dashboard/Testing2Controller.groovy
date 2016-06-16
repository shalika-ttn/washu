package com.washu.dashboard

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(['ROLE_ADMIN','ROLE_USER'])
@Transactional(readOnly = true)
class Testing2Controller {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Testing2.list(params), model:[testing2InstanceCount: Testing2.count()]
    }

    def show(Testing2 testing2Instance) {
        respond testing2Instance
    }

    def create() {
        respond new Testing2(params)
    }

    @Transactional
    def save(Testing2 testing2Instance) {
        if (testing2Instance == null) {
            notFound()
            return
        }

        if (testing2Instance.hasErrors()) {
            respond testing2Instance.errors, view:'create'
            return
        }

        testing2Instance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'testing2.label', default: 'Testing2'), testing2Instance.id])
                redirect testing2Instance
            }
            '*' { respond testing2Instance, [status: CREATED] }
        }
    }

    def edit(Testing2 testing2Instance) {
        respond testing2Instance
    }

    @Transactional
    def update(Testing2 testing2Instance) {
        if (testing2Instance == null) {
            notFound()
            return
        }

        if (testing2Instance.hasErrors()) {
            respond testing2Instance.errors, view:'edit'
            return
        }

        testing2Instance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Testing2.label', default: 'Testing2'), testing2Instance.id])
                redirect testing2Instance
            }
            '*'{ respond testing2Instance, [status: OK] }
        }
    }

    @Transactional
    def delete(Testing2 testing2Instance) {

        if (testing2Instance == null) {
            notFound()
            return
        }

        testing2Instance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Testing2.label', default: 'Testing2'), testing2Instance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'testing2.label', default: 'Testing2'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
