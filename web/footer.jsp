<%-- 
    Document   : footer
    Created on : 03/04/2018, 21:03:46
    Author     : Marcos
--%>

            </div> <!-- ./row -->
        </div> <!-- ./container -->
  
        <footer class="py-5 bg-dark">
            <div class="container">
                <p id="copyright" class="m-0 text-center text-white">Copyright &COPY; [[ano]] Website</p>
            </div>
        </footer>

        <!-- Importando: 1-jQuery 2-Bootstrap 3-Plugin JSCookie -->
        <script src="assets/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="assets/bootstrap/js/bootstrap.bundle.js" type="text/javascript"></script>
        <script src="assets/jquery/plugins/js-cookie.js" type="text/javascript"></script>
        
        <!-- Importa fun��es padr�o -->
        <script src="assets/js/helperFunctions.js" type="text/javascript"></script>
        
        <script type="text/javascript">
            $(document).ready(function(){ 
                setCopyright();
                var paginaAtual = location.href;
                //Se estiver na p�gina de login faz os precedimentos da op��o "Lembre-se de mim"
                if(paginaAtual.indexOf("login.jsp")) {
                    var cookieValue = getCookieValue("emailUser"); 
                    if(typeof cookieValue !== "undefined" || cookieValue !== false) {
                        //Se j� existe um cookie setado, recupera os dados do mesmo e coloca no input
                        $("#email").val(cookieValue);
                    }
                    //Adiciona evento no formul�rio de login para salvar o cookie caso 
                    $('#frmLogin').submit(function(event){
                        var inputChecked = $('#remember').prop('checked');
                        var emailUser = $('#email').val();
                        if(inputChecked && emailUser !== getCookieValue("emailUser")) {
                            setCookie("emailUser", emailUser, 365);
                            event.preventDefault();
                        }
                        else {
                            //Se o campo "Lembre-se de mim" n�o estiver marcado ent�o remove o cookie caso exista
                            removeCookie("emailUser");
                        }
                    });
                }
            });
        </script>
    </body>
</html>
