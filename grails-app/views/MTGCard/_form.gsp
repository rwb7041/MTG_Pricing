<%@ page import="mtg_tgc_pricing.MTGCard" %>



<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="MTGCard.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${MTGCardInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="MTGCard.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" required="" value="${MTGCardInstance?.type}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'multiverseID', 'error')} required">
	<label for="multiverseID">
		<g:message code="MTGCard.multiverseID.label" default="Multiverse ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="multiverseID" required="" value="${MTGCardInstance?.multiverseID}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'manaCost', 'error')} required">
	<label for="manaCost">
		<g:message code="MTGCard.manaCost.label" default="Mana Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="manaCost" required="" value="${MTGCardInstance?.manaCost}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'cmc', 'error')} required">
	<label for="cmc">
		<g:message code="MTGCard.cmc.label" default="Cmc" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cmc" type="number" value="${MTGCardInstance.cmc}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'power', 'error')} required">
	<label for="power">
		<g:message code="MTGCard.power.label" default="Power" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="power" type="number" value="${MTGCardInstance.power}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'toughness', 'error')} required">
	<label for="toughness">
		<g:message code="MTGCard.toughness.label" default="Toughness" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="toughness" type="number" value="${MTGCardInstance.toughness}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'loyalty', 'error')} required">
	<label for="loyalty">
		<g:message code="MTGCard.loyalty.label" default="Loyalty" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="loyalty" type="number" value="${MTGCardInstance.loyalty}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'ability', 'error')} required">
	<label for="ability">
		<g:message code="MTGCard.ability.label" default="Ability" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="ability" cols="40" rows="5" maxlength="50000" required="" value="${MTGCardInstance?.ability}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'flavorText', 'error')} required">
	<label for="flavorText">
		<g:message code="MTGCard.flavorText.label" default="Flavor Text" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="flavorText" cols="40" rows="5" maxlength="50000" required="" value="${MTGCardInstance?.flavorText}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'color', 'error')} required">
	<label for="color">
		<g:message code="MTGCard.color.label" default="Color" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="color" required="" value="${MTGCardInstance?.color}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'foil_price_high', 'error')} required">
	<label for="foil_price_high">
		<g:message code="MTGCard.foil_price_high.label" default="Foilpricehigh" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="foil_price_high" value="${fieldValue(bean: MTGCardInstance, field: 'foil_price_high')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'foil_price_low', 'error')} required">
	<label for="foil_price_low">
		<g:message code="MTGCard.foil_price_low.label" default="Foilpricelow" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="foil_price_low" value="${fieldValue(bean: MTGCardInstance, field: 'foil_price_low')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'foil_price_mid', 'error')} required">
	<label for="foil_price_mid">
		<g:message code="MTGCard.foil_price_mid.label" default="Foilpricemid" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="foil_price_mid" value="${fieldValue(bean: MTGCardInstance, field: 'foil_price_mid')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'price_low', 'error')} required">
	<label for="price_low">
		<g:message code="MTGCard.price_low.label" default="Pricelow" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price_low" value="${fieldValue(bean: MTGCardInstance, field: 'price_low')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'price_mid', 'error')} required">
	<label for="price_mid">
		<g:message code="MTGCard.price_mid.label" default="Pricemid" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price_mid" value="${fieldValue(bean: MTGCardInstance, field: 'price_mid')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'price_high', 'error')} required">
	<label for="price_high">
		<g:message code="MTGCard.price_high.label" default="Pricehigh" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price_high" value="${fieldValue(bean: MTGCardInstance, field: 'price_high')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'artist', 'error')} required">
	<label for="artist">
		<g:message code="MTGCard.artist.label" default="Artist" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="artist" required="" value="${MTGCardInstance?.artist}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'cardNumberInSet', 'error')} required">
	<label for="cardNumberInSet">
		<g:message code="MTGCard.cardNumberInSet.label" default="Card Number In Set" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cardNumberInSet" type="number" value="${MTGCardInstance.cardNumberInSet}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'rarity', 'error')} required">
	<label for="rarity">
		<g:message code="MTGCard.rarity.label" default="Rarity" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rarity" required="" value="${MTGCardInstance?.rarity}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MTGCardInstance, field: 'set', 'error')} required">
	<label for="set">
		<g:message code="MTGCard.set.label" default="Set" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="set" name="set.id" from="${mtg_tgc_pricing.MTGSet.list()}" optionKey="id" required="" value="${MTGCardInstance?.set?.id}" class="many-to-one"/>

</div>

