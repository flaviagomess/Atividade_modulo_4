<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

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
<title>Recode Brasil Agência de viagens :: Criar Reserva</title>
</head>
<body>
	
<main>
<div>
    <main class="main">
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary border-bottom shadow-sm mb-3">
            <div class="container">
                <a class="navbar-brand" href="../../index.html">
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
                            <a href="./destino" class="nav-link text-white">
                                Destinos
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="./reserva" class="nav-link text-white">
                                Reserva
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <header class="tag">
            <h1 class="container">Criar Reserva</h1>
        </header>
        
 <div class="container py-3">
			<form action="reserva-create">
				<div class="form-group mb-3">
					<label for="data" class="form-label"> Data </label> <input
						type="text" id="data" name="data" class="form-control" value="" />
				</div>

				<div class="form-group mb-3">
					<label for="destino" class="form-label"> Destino </label> 
					<select id="destino" name="destino" class="form-control">
						<option value="DEFAULT">Escolha um Destino</option>
						<jstl:forEach items="${listaDestinos}" var="d">
							<option value="${d.id}">${d.nome}</option>
						</jstl:forEach>
					</select>
				</div>
				<div class="form-group mb-3">
					<label for="usuario" class="form-label"> Usuário </label> 
					<select id="usuario" name="usuario" class="form-control">
						<option value="DEFAULT">Escolha um Usuário</option>
						<jstl:forEach items="${listaUsuarios}" var="u">
							<option value="${u.id}">${u.nome}</option>
						</jstl:forEach>
					</select>
				</div>
				
				<button type="submit" class="btn btn-primary">Enviar</button>
				<a href="./reserva" class="btn btn-danger"
					style="margin-left: 10px"> Cancelar </a>
			</form>
		</div>

	</main>
     
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
             <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>
</body>
</html>
