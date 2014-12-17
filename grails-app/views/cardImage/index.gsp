
<%@ page import="mtg_tgc_pricing.MTGCard" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'CardImage.label', default: 'CardImage')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
    <div id="content">
        <div class="box">
            <h1>All card Images</h1>
        </div>
        <div id="maintest">
            <g:each var="card" in="${mtg_tgc_pricing.MTGCard.list()}" status="i" >
                <img src="${card.cardImage}" alt="${card.multiverseID}" />
                %{--<g:if test="${i} % 4 == 0">--}%
                    %{--<br/>--}%
                %{--</g:if>--}%
            </g:each>
        </div>
    </div>
	</body>
</html>
