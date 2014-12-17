
<%@ page import="mtg_tgc_pricing.MTGCard" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MTGCard.label', default: 'MTGCard')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-MTGCard" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-MTGCard" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list MTGCard">
			
				<g:if test="${MTGCardInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="MTGCard.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${MTGCardInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="MTGCard.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${MTGCardInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.multiverseID}">
				<li class="fieldcontain">
					<span id="multiverseID-label" class="property-label"><g:message code="MTGCard.multiverseID.label" default="Multiverse ID" /></span>
					
						<span class="property-value" aria-labelledby="multiverseID-label"><g:fieldValue bean="${MTGCardInstance}" field="multiverseID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.manaCost}">
				<li class="fieldcontain">
					<span id="manaCost-label" class="property-label"><g:message code="MTGCard.manaCost.label" default="Mana Cost" /></span>
					
						<span class="property-value" aria-labelledby="manaCost-label"><g:fieldValue bean="${MTGCardInstance}" field="manaCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.cmc}">
				<li class="fieldcontain">
					<span id="cmc-label" class="property-label"><g:message code="MTGCard.cmc.label" default="Cmc" /></span>
					
						<span class="property-value" aria-labelledby="cmc-label"><g:fieldValue bean="${MTGCardInstance}" field="cmc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.power}">
				<li class="fieldcontain">
					<span id="power-label" class="property-label"><g:message code="MTGCard.power.label" default="Power" /></span>
					
						<span class="property-value" aria-labelledby="power-label"><g:fieldValue bean="${MTGCardInstance}" field="power"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.toughness}">
				<li class="fieldcontain">
					<span id="toughness-label" class="property-label"><g:message code="MTGCard.toughness.label" default="Toughness" /></span>
					
						<span class="property-value" aria-labelledby="toughness-label"><g:fieldValue bean="${MTGCardInstance}" field="toughness"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.loyalty}">
				<li class="fieldcontain">
					<span id="loyalty-label" class="property-label"><g:message code="MTGCard.loyalty.label" default="Loyalty" /></span>
					
						<span class="property-value" aria-labelledby="loyalty-label"><g:fieldValue bean="${MTGCardInstance}" field="loyalty"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.ability}">
				<li class="fieldcontain">
					<span id="ability-label" class="property-label"><g:message code="MTGCard.ability.label" default="Ability" /></span>
					
						<span class="property-value" aria-labelledby="ability-label"><g:fieldValue bean="${MTGCardInstance}" field="ability"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.flavorText}">
				<li class="fieldcontain">
					<span id="flavorText-label" class="property-label"><g:message code="MTGCard.flavorText.label" default="Flavor Text" /></span>
					
						<span class="property-value" aria-labelledby="flavorText-label"><g:fieldValue bean="${MTGCardInstance}" field="flavorText"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.color}">
				<li class="fieldcontain">
					<span id="color-label" class="property-label"><g:message code="MTGCard.color.label" default="Color" /></span>
					
						<span class="property-value" aria-labelledby="color-label"><g:fieldValue bean="${MTGCardInstance}" field="color"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.foil_price_high}">
				<li class="fieldcontain">
					<span id="foil_price_high-label" class="property-label"><g:message code="MTGCard.foil_price_high.label" default="Foilpricehigh" /></span>
					
						<span class="property-value" aria-labelledby="foil_price_high-label"><g:fieldValue bean="${MTGCardInstance}" field="foil_price_high"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.foil_price_low}">
				<li class="fieldcontain">
					<span id="foil_price_low-label" class="property-label"><g:message code="MTGCard.foil_price_low.label" default="Foilpricelow" /></span>
					
						<span class="property-value" aria-labelledby="foil_price_low-label"><g:fieldValue bean="${MTGCardInstance}" field="foil_price_low"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.foil_price_mid}">
				<li class="fieldcontain">
					<span id="foil_price_mid-label" class="property-label"><g:message code="MTGCard.foil_price_mid.label" default="Foilpricemid" /></span>
					
						<span class="property-value" aria-labelledby="foil_price_mid-label"><g:fieldValue bean="${MTGCardInstance}" field="foil_price_mid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.price_low}">
				<li class="fieldcontain">
					<span id="price_low-label" class="property-label"><g:message code="MTGCard.price_low.label" default="Pricelow" /></span>
					
						<span class="property-value" aria-labelledby="price_low-label"><g:fieldValue bean="${MTGCardInstance}" field="price_low"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.price_mid}">
				<li class="fieldcontain">
					<span id="price_mid-label" class="property-label"><g:message code="MTGCard.price_mid.label" default="Pricemid" /></span>
					
						<span class="property-value" aria-labelledby="price_mid-label"><g:fieldValue bean="${MTGCardInstance}" field="price_mid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.price_high}">
				<li class="fieldcontain">
					<span id="price_high-label" class="property-label"><g:message code="MTGCard.price_high.label" default="Pricehigh" /></span>
					
						<span class="property-value" aria-labelledby="price_high-label"><g:fieldValue bean="${MTGCardInstance}" field="price_high"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.artist}">
				<li class="fieldcontain">
					<span id="artist-label" class="property-label"><g:message code="MTGCard.artist.label" default="Artist" /></span>
					
						<span class="property-value" aria-labelledby="artist-label"><g:fieldValue bean="${MTGCardInstance}" field="artist"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.cardNumberInSet}">
				<li class="fieldcontain">
					<span id="cardNumberInSet-label" class="property-label"><g:message code="MTGCard.cardNumberInSet.label" default="Card Number In Set" /></span>
					
						<span class="property-value" aria-labelledby="cardNumberInSet-label"><g:fieldValue bean="${MTGCardInstance}" field="cardNumberInSet"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.rarity}">
				<li class="fieldcontain">
					<span id="rarity-label" class="property-label"><g:message code="MTGCard.rarity.label" default="Rarity" /></span>
					
						<span class="property-value" aria-labelledby="rarity-label"><g:fieldValue bean="${MTGCardInstance}" field="rarity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGCardInstance?.set}">
				<li class="fieldcontain">
					<span id="set-label" class="property-label"><g:message code="MTGCard.set.label" default="Set" /></span>
					
						<span class="property-value" aria-labelledby="set-label"><g:link controller="MTGSet" action="show" id="${MTGCardInstance?.set?.id}">${MTGCardInstance?.set?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:MTGCardInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${MTGCardInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
