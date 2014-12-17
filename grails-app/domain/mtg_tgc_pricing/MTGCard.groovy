package mtg_tgc_pricing

class MTGCard implements Serializable {

    String multiverseID
    String name
    static belongsTo = [set: MTGSet]
    String type
    String rarity
    String manaCost
    Integer cmc
    Integer power
    Integer toughness
    Integer loyalty
    String ability
    String flavorText
    String artist
    Integer cardNumberInSet
    String color

    String cardImage

    // pricing
    BigDecimal price_low
    BigDecimal price_mid
    BigDecimal price_high
    BigDecimal foil_price_low
    BigDecimal foil_price_mid
    BigDecimal foil_price_high


    static constraints = {
        name blank: false, nullable: false
        type blank: false, nullable: false
        multiverseID blank: false, nullable: false
        manaCost blank: true, nullble: true
        cmc blank: true, nullble: true

        cardImage blank:false, nullable:false, url: true

        power blank: true, nullble: true
        toughness blank: true, nullble: true
        loyalty blank: true, nullble: true
        ability blank: true, nullble: true, maxSize: 50000
        flavorText blank: true, nullble: true, maxSize: 50000
        color blank: true, nullble: true
        foil_price_high blank: true, nullble: true
        foil_price_low blank: true, nullble: true
        foil_price_mid blank: true, nullble: true
        price_low blank: true, nullble: true
        price_mid blank: true, nullble: true
        price_high blank: true, nullble: true
    }

    static mapping = {
        id composite: ['multiverseID']
    }
}
