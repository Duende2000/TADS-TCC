<%-- 
    Document   : teste
    Created on : 24/03/2018, 17:42:30
    Author     : onurb
--%>

<!-- Cabe�alho -->
<%@include file="head.jsp" %>
<c:if test="${(empty(usuario))}">
    <c:set var="msg" value="Fa�a login para acessar esta p�gina!" scope="request"/>
    <c:redirect url="index.jsp" />
</c:if>
<div class="col-md-10 col-sm-10 col-xs-12">
  
</div>

<!-- Rodap� -->
<%@include file="footer.jsp" %>

