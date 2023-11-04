<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet" type="text/css" href="./assets/css/style.css"/>
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<title>Recode Brasil Agência de viagens :: Atualizar Usuário</title>
</head>
<body>

<main>
    <div class="main">
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary border-bottom shadow-sm mb-3">
            <div class="container">
                <a class="navbar-brand" href="./index.html">
                    <b>Recode Brasil</b>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a href="./usuario" class="nav-link text-white">
                                Usuários
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="../Destinos/formDestino.html" class="nav-link text-white">
                                Destinos
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="../Reserva/forReserva.html" class="nav-link text-white">
                                Reserva
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <header class="tag">
            <h1 class="container">Atualizar Usuário</h1>
        </header>

       <div class="container py-3">
            <form action="./usuario-update">
            <input type="hidden" id="id" name="id" class="form-control" value="${usuario.id}" />
<!-- 	            <div class="form-group mb-3"> -->
<!-- 	                <label for="nome" class="form-label"> -->
<!-- 	                    id -->
<!-- 	                </label> -->
<%-- 	                <input type="text" id="id" name="id" class="form-control" value="${usuario.id}" readonly/> --%>
<!-- 	            </div> -->
	            <div class="form-group mb-3">
                        <label htmlFor="Nome" class="form-label">
                            Nome
                        </label>
                        <input type="text" id="nome" name="nome"
                         class="form-control" placeholder="Insira o nome" value="${usuario.nome}"/>
                    </div>
                    <div class="form-group mb-3">
                        <label htmlFor="email" class="form-label">
                            E-mail
                        </label>
                        <input type="text" id="Email" name="email" class="form-control" placeholder=" Insira o email" value="${usuario.email}" />
                    </div>
                    <div class="form-group mb-3">
                        <label htmlFor="Senha" class="form-label">
                            Senha
                        </label>
                        <input type="password" id="Senha" name="senha" class="form-control" placeholder="Insira a senha" value="${usuario.senha}" />
                    </div>

                    <button type="submit" class="btn btn-primary">
                        Enviar
                    </button>
                    <a href="./usuario" class="btn btn-danger" style="margin-left: 10px">
                        Cancelar
                    </a>
                </fieldset>
            </form>
        </div>
        <br><br>
          <footer>
            <div class="container">
              <div class="row">
                <div class="col-md-12">
                  <div class="copyright-area text-center">
                    <p> &copy; 2023 - Direitos reservados a Recode Brasil Agência de Viagens</p>
                  </div>
                </div>
              </div>
            </div>
          </footer>
		</main>
             <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>
</body>
</html>
