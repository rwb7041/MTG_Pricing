package mtg_tgc_pricing

class MTGSet implements Serializable {

    String code
    String name
    String magiccardsCode
    Boolean isPromo
    Date releaseDate

    static hasMany = [cards: MTGCard]

    static constraints = {
        code unique: true
        name blank: false, nullable: false
        isPromo blank: false, nullable: false
        releaseDate blank: false, nullable: false
    }

    static mapping = {
        id composite: ['code']
        cards cascade: 'all'
    }

}
