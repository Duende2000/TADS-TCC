<%-- 
    Document   : login
    Created on : 25/03/2018, 18:49:51
    Author     : onurb
--%>

<!-- Cabe�alho -->
<%@ include file="head.jsp" %>
<div class="col-md-12 col-sm-12 col-xs-12">
        <c:if test="${(!empty(msg))}">
            <div class="alert alert-warning" role="alert">
                <c:out value="${msg}"/>
            </div>
        </c:if>
    <br>
    <div class="jumbotron">
        <form action="LoginServlet" method="POST">
            <div class="form-group">
                <label for="email">Email:</label>
                <input name="login" type="email" class="form-control" id="email">
            </div>
            <div class="form-group">
                <label for="pwd">Senha:</label>
                <input name="senha" type="password" class="form-control" id="pwd">
            </div>
            <div class="checkbox">
                <label><input type="checkbox"> Remember me</label>
            </div>
            <button type="submit" class="btn btn-success">Logar</button>
        </form>
    </div>
</div>    

<!-- Rodap� -->
<%@ include file="footer.jsp" %>
