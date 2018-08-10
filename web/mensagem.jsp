<%-- 
    Document   : mensagem
    Created on : 22/05/2018, 14:18:31
    Author     : Marcos
--%>

<!-- Cabe�alho -->
<%@include file="head.jsp" %>
<c:if test="${(empty(user))}">
    <c:redirect url="index.jsp">
        <c:param name="msg" value="Fa�a login para acessar esta p�gina!"></c:param>
    </c:redirect>
</c:if>
<!-- importanto CSS para mensagens e coment�rios -->
<link href="assets/css/mensagem.css" rel="stylesheet">

<div class="col-lg-10">
    <form id="mensagemAjax">
        <input name="action" value="ADD" type="hidden">
        <input name="ID_ANUNCIO" value="4" type="hidden">
        <input name="ID_USUARIO" value="<c:out value="${user.getId()}"/>" type="hidden">
        <div class="form-group">
            <label for="DS_MSG">Mensagem:</label>
            <textarea id="DS_MSG" name="DS_MSG" class="form-control" cols="25" rows="5"></textarea>
        </div>
        <div class="form-group send-icon">
            <button name="BTN_ENVIAR" type="submit" class="btn btn-success pull-right" value="Enviar">
                <i class="fa fa-send"></i>
            </button>
        </div>
    </form> <!-- fim #mensagemAjax -->
</div> <!-- fim .col-lg-10 -->
<div id="respostaAjax" class="col-lg-10 comment-main">
    <ul class="p-0">
        <li>

        </li>
    </ul>
</div> <!-- fim #respostaAjax -->
<!-- Rodap� -->
<%@include file="footer.jsp" %>
