
<%@ page import="mtg_tgc_pricing.MTGCard" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MTGCard.label', default: 'MTGCard')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-MTGCard" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-MTGCard" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'MTGCard.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'MTGCard.type.label', default: 'Type')}" />
					
						<g:sortableColumn property="multiverseID" title="${message(code: 'MTGCard.multiverseID.label', default: 'Multiverse ID')}" />
					
						<g:sortableColumn property="manaCost" title="${message(code: 'MTGCard.manaCost.label', default: 'Mana Cost')}" />
					
						<g:sortableColumn property="cmc" title="${message(code: 'MTGCard.cmc.label', default: 'Cmc')}" />
					
						<g:sortableColumn property="power" title="${message(code: 'MTGCard.power.label', default: 'Power')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${MTGCardInstanceList}" status="i" var="MTGCardInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${MTGCardInstance.id}">${fieldValue(bean: MTGCardInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: MTGCardInstance, field: "type")}</td>
					
						<td>${fieldValue(bean: MTGCardInstance, field: "multiverseID")}</td>
					
						<td>${fieldValue(bean: MTGCardInstance, field: "manaCost")}</td>
					
						<td>${fieldValue(bean: MTGCardInstance, field: "cmc")}</td>
					
						<td>${fieldValue(bean: MTGCardInstance, field: "power")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${MTGCardInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
