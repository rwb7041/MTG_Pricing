package mtg_tgc_pricing



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MTGSetController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MTGSet.list(params), model:[MTGSetInstanceCount: MTGSet.count()]
    }

    def show(MTGSet MTGSetInstance) {
        respond MTGSetInstance
    }

    def create() {
        respond new MTGSet(params)
    }

    @Transactional
    def save(MTGSet MTGSetInstance) {
        if (MTGSetInstance == null) {
            notFound()
            return
        }

        if (MTGSetInstance.hasErrors()) {
            respond MTGSetInstance.errors, view:'create'
            return
        }

        MTGSetInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'MTGSet.label', default: 'MTGSet'), MTGSetInstance.id])
                redirect MTGSetInstance
            }
            '*' { respond MTGSetInstance, [status: CREATED] }
        }
    }

    def edit(MTGSet MTGSetInstance) {
        respond MTGSetInstance
    }

    @Transactional
    def update(MTGSet MTGSetInstance) {
        if (MTGSetInstance == null) {
            notFound()
            return
        }

        if (MTGSetInstance.hasErrors()) {
            respond MTGSetInstance.errors, view:'edit'
            return
        }

        MTGSetInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MTGSet.label', default: 'MTGSet'), MTGSetInstance.id])
                redirect MTGSetInstance
            }
            '*'{ respond MTGSetInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MTGSet MTGSetInstance) {

        if (MTGSetInstance == null) {
            notFound()
            return
        }

        MTGSetInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MTGSet.label', default: 'MTGSet'), MTGSetInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTGSet.label', default: 'MTGSet'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
