<%-- 
    Document   : escolhaAnuncio
    Created on : 14/04/2018, 14:36:39
    Author     : onurb
--%>

<!-- Cabe�alho -->
<%@include file="head.jsp" %>
<c:if test="${(empty(user))}">
    <c:redirect url="index.jsp">
        <c:param name="msg" value="Fa�a login para acessar esta p�gina!"></c:param>
    </c:redirect>
</c:if>
<div class="list-group">
    <a class="list-group-item" href="MainPageServlet?action=ANUNCIO&tipo=imovel">Im�vel</a>
    <a class="list-group-item" href="MainPageServlet?action=ANUNCIO&tipo=movel">M�vel</a>
    <a class="list-group-item" href="MainPageServlet?action=ANUNCIO&tipo=material">Material</a>
</div>
<!-- Rodap� -->
<%@include file="footer.jsp" %>
