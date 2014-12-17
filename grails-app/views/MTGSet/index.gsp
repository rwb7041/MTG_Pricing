
<%@ page import="mtg_tgc_pricing.MTGSet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MTGSet.label', default: 'MTGSet')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-MTGSet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-MTGSet" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="code" title="${message(code: 'MTGSet.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'MTGSet.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="isPromo" title="${message(code: 'MTGSet.isPromo.label', default: 'Is Promo')}" />
					
						<g:sortableColumn property="releaseDate" title="${message(code: 'MTGSet.releaseDate.label', default: 'Release Date')}" />
					
						<g:sortableColumn property="magiccardsCode" title="${message(code: 'MTGSet.magiccardsCode.label', default: 'Magiccards Code')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${MTGSetInstanceList}" status="i" var="MTGSetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${MTGSetInstance.id}">${fieldValue(bean: MTGSetInstance, field: "code")}</g:link></td>
					
						<td>${fieldValue(bean: MTGSetInstance, field: "name")}</td>
					
						<td><g:formatBoolean boolean="${MTGSetInstance.isPromo}" /></td>
					
						<td><g:formatDate date="${MTGSetInstance.releaseDate}" /></td>
					
						<td>${fieldValue(bean: MTGSetInstance, field: "magiccardsCode")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${MTGSetInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
