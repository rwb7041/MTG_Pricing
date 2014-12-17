
<%@ page import="mtg_tgc_pricing.MTGSet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MTGSet.label', default: 'MTGSet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-MTGSet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-MTGSet" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list MTGSet">
			
				<g:if test="${MTGSetInstance?.code}">
				<li class="fieldcontain">
					<span id="code-label" class="property-label"><g:message code="MTGSet.code.label" default="Code" /></span>
					
						<span class="property-value" aria-labelledby="code-label"><g:fieldValue bean="${MTGSetInstance}" field="code"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGSetInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="MTGSet.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${MTGSetInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGSetInstance?.isPromo}">
				<li class="fieldcontain">
					<span id="isPromo-label" class="property-label"><g:message code="MTGSet.isPromo.label" default="Is Promo" /></span>
					
						<span class="property-value" aria-labelledby="isPromo-label"><g:formatBoolean boolean="${MTGSetInstance?.isPromo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGSetInstance?.releaseDate}">
				<li class="fieldcontain">
					<span id="releaseDate-label" class="property-label"><g:message code="MTGSet.releaseDate.label" default="Release Date" /></span>
					
						<span class="property-value" aria-labelledby="releaseDate-label"><g:formatDate date="${MTGSetInstance?.releaseDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MTGSetInstance?.magiccardsCode}">
				<li class="fieldcontain">
					<span id="magiccardsCode-label" class="property-label"><g:message code="MTGSet.magiccardsCode.label" default="Magiccards Code" /></span>
					
						<span class="property-value" aria-labelledby="magiccardsCode-label"><g:fieldValue bean="${MTGSetInstance}" field="magiccardsCode"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:MTGSetInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${MTGSetInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
