<%--
  Created by IntelliJ IDEA.
  User: ryanbelt
  Date: 12/12/14
  Time: 9:24 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Upload data</title>
</head>

<body>
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        </ul>
    </div>
    <div id="content">
        <div class="box">
            <h1>Upload XML for Card and Set data</h1>
        </div>
        <div id="maintest">
            <div id="uploadForm" class="content scaffold-show" role="main">
                <h1>Import Card and Set data</h1>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                Upload Form (XML file): <br/>
                <g:uploadForm action="importData">
                    <input type="file" name="myFile" />
                    <input type="submit"/>
                </g:uploadForm>
            </div>
        </div>
    </div>
</body>
</html>