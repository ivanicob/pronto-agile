<%@ include file="/commons/taglibs.jsp" %>

<c:url var="jqueryUrl" value="/commons/scripts/jquery-1.3.2.min.js"/>
<script type="text/javascript" src="${jqueryUrl}"></script>

<c:url var="hotKeys" value="/commons/scripts/jquery.hotkeys-0.7.9.js"/>
<script type="text/javascript" src="${hotKeys}"></script>

<c:url var="shortKeys" value="/commons/scripts/jquery.shortkeys.js"/>
<script type="text/javascript" src="${shortKeys}"></script>

<c:url var="menuJsUrl" value="/commons/scripts/menu.js"/>
<script type="text/javascript" src="${menuJsUrl}"></script>

<c:url var="markItUpUrl" value="/commons/scripts/markitup/jquery.markitup.pack.js"/>
<script type="text/javascript" src="${markItUpUrl}"></script>

<c:url var="markItUpSettingsUrl" value="/commons/scripts/markitup/set.js"/>
<script type="text/javascript" src="${markItUpSettingsUrl}"></script>

<c:url var="jqueryValidator" value="/commons/scripts/jquery.validate.pack.js"/>
<script type="text/javascript" src="${jqueryValidator}"></script>

<c:url var="jqueryValidatorBr" value="/commons/scripts/jquery.validate.br.js"/>
<script type="text/javascript" src="${jqueryValidatorBr}"></script>

<c:url var="jqueryUI" value="/commons/scripts/jquery-ui-1.7.2.custom.min.js"/>
<script type="text/javascript" src="${jqueryUI}"></script>

<c:url var="swfObject" value="/commons/scripts/swfobject.js"/>
<script type="text/javascript" src="${swfObject}"></script>

<c:url var="jqueryBlockUI" value="/commons/scripts/jquery.blockUI.js"/>
<script type="text/javascript" src="${jqueryBlockUI}"></script>

<c:url var="gritter" value="/commons/scripts/gritter/jquery.gritter.min.js"/>
<script type="text/javascript" src="${gritter}"></script>

<c:url var="raiz" value="/"/>
<script>
	var pronto = pronto? pronto : {};
	pronto.raiz = '${raiz}';
</script>

<c:url var="prontoJsUrl" value="/commons/scripts/pronto.js"/>
<script type="text/javascript" src="${prontoJsUrl}"></script>