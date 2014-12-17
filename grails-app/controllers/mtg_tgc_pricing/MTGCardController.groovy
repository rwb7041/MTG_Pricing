package mtg_tgc_pricing



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MTGCardController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MTGCard.list(params), model:[MTGCardInstanceCount: MTGCard.count()]
    }

    def show(MTGCard MTGCardInstance) {
        respond MTGCardInstance
    }

    def create() {
        respond new MTGCard(params)
    }

    @Transactional
    def save(MTGCard MTGCardInstance) {
        if (MTGCardInstance == null) {
            notFound()
            return
        }

        if (MTGCardInstance.hasErrors()) {
            respond MTGCardInstance.errors, view:'create'
            return
        }

        MTGCardInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'MTGCard.label', default: 'MTGCard'), MTGCardInstance.id])
                redirect MTGCardInstance
            }
            '*' { respond MTGCardInstance, [status: CREATED] }
        }
    }

    def edit(MTGCard MTGCardInstance) {
        respond MTGCardInstance
    }

    @Transactional
    def update(MTGCard MTGCardInstance) {
        if (MTGCardInstance == null) {
            notFound()
            return
        }

        if (MTGCardInstance.hasErrors()) {
            respond MTGCardInstance.errors, view:'edit'
            return
        }

        MTGCardInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MTGCard.label', default: 'MTGCard'), MTGCardInstance.id])
                redirect MTGCardInstance
            }
            '*'{ respond MTGCardInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MTGCard MTGCardInstance) {

        if (MTGCardInstance == null) {
            notFound()
            return
        }

        MTGCardInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MTGCard.label', default: 'MTGCard'), MTGCardInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTGCard.label', default: 'MTGCard'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
