package mtg_tgc_pricing

class XMLUploaderController {

    def index() {}

    def importData() {
        def f = request.getFile('myFile')
        if (f.empty) {
            flash.message = 'file cannot be empty'
            render(view: 'index')
            return
        }

        def xml = new XmlSlurper().parse(f.inputStream)
        // load in the sets
        for (int i = 0; i < xml.sets.set.size(); i++) {
            if (!MTGSet.findAllByCode(xml.sets.set[i].code)) {
                // set already doesn't exist
                def newSet = new MTGSet()
                newSet.code = xml.sets.set[i].code
                newSet.isPromo = xml.sets.set[i].is_promo.text().toBoolean()
                newSet.name = xml.sets.set[i].name
                newSet.releaseDate = Date.parse("MM/yyyy", xml.sets.set[i].date.text())
                newSet.magiccardsCode = xml.sets.set[i].code_magiccards
                if(!newSet.save(flush: true)) {
                    flash.message = ""
                    newSet.errors.each {
                        flash.message += "\n" + it + "\n"
                    }
                    render(view: 'index')
                    return
                }
            } else {
                System.out.printf("Set [%s] %s already exists\n", xml.sets.set[i].code, xml.sets.set[i].name)
            }
        }

        // load in the cards
        for(int i = 0; i < xml.cards.card.size(); i++) {
            if (!MTGCard.findAllByMultiverseID(xml.cards.card[i].id)) {
                // card doesn't already exist
                def newCard = new MTGCard()
                // basic card info
                newCard.multiverseID = xml.cards.card[i].id
                newCard.name = xml.cards.card[i].name
                newCard.set = MTGSet.findByCode(xml.cards.card[i].set)
                newCard.type = xml.cards.card[i].type

                // additional card info
                newCard.rarity = xml.cards.card[i].rarity
                newCard.manaCost = xml.cards.card[i].manacost
                if(xml.cards.card[i].converted_manacost.text().isInteger())
                    newCard.cmc = xml.cards.card[i].converted_manacost.text().toInteger()
                else
                    newCard.cmc = 0
                if(xml.cards.card[i].power.text().isInteger())
                    newCard.power = xml.cards.card[i].power.text().toInteger()
                else
                    newCard.power = -1
                if(xml.cards.card[i].toughness.text().isInteger())
                    newCard.toughness = xml.cards.card[i].toughness.text().toInteger()
                else
                    newCard.toughness = -1
                if(xml.cards.card[i].loyalty.text().isInteger())
                    newCard.loyalty = xml.cards.card[i].loyalty.text().toInteger()
                else
                    newCard.loyalty = -1
                newCard.ability = xml.cards.card[i].ability
                newCard.flavorText = xml.cards.card[i].flavor
                newCard.artist = xml.cards.card[i].artist
                if(xml.cards.card[i].number.text().isInteger())
                    newCard.cardNumberInSet = xml.cards.card[i].number.text().toInteger()
                newCard.color = xml.cards.card[i].color

                // initial prices
                if(xml.cards.card[i].pricing_low.text().isBigDecimal())
                    newCard.price_low = xml.cards.card[i].pricing_low.text().toBigDecimal()
                else
                    newCard.price_low = 0
                if(xml.cards.card[i].pricing_mid.text().isBigDecimal())
                    newCard.price_mid = xml.cards.card[i].pricing_mid.text().toBigDecimal()
                else
                    newCard.price_mid = 0
                if(xml.cards.card[i].pricing_high.text().isBigDecimal())
                    newCard.price_high = xml.cards.card[i].pricing_high.text().toBigDecimal()
                else
                    newCard.price_high = 0
                newCard.foil_price_low = 0
                newCard.foil_price_mid = 0
                newCard.foil_price_high = 0

                // image URL
                if (xml.cards.card[i].id.text().isInteger()) {
                    // the card image URL comes from Gatherer
                    newCard.cardImage = "http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=" +
                            newCard.multiverseID + "&type=card"
                } else {
                    // need to get the card image URL from elsewhere (like magiccards.info)
                    // first, get the magiccards set code
                    newCard.cardImage = "http://magiccards.info/scans/en/" +
                            newCard.set.magiccardsCode.toLowerCase() +
                            "/" + newCard.cardNumberInSet + ".jpg"
                }

                if(!newCard.save(flush: true)) {
                    flash.message = ""
                    newCard.errors.each {
                        flash.message += "\n" + it + "\n"
                    }
                    render(view: 'index')
                    return
                }
            } else {
                System.out.printf("Card [%s] %s from set %s already exists\n", xml.cards.card[i].id, xml.cards.card[i].name, xml.cards.card[i].set)
            }
        }

        System.out.println("All sets and cards processed")
        flash.message = 'All sets and cards processed'
        render(view: 'index')
    }
}
