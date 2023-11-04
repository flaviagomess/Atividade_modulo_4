<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet" type="text/css" href="./assets/css/style.css"/>
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<title>Recode Brasil Agência de viagens :: Home</title>
</head>

<body>
<main>

	<div class="main">
		<nav
			class="navbar navbar-expand-lg navbar-dark bg-primary border-bottom shadow-sm mb-3">
			<div class="container">
				<a class="navbar-brand" href="./index.html"> <b>Recode
						Brasil</b>
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a href="./usuario"
							class="nav-link text-white"> Usuários </a></li>
						<li class="nav-item"><a href="./destino"
							class="nav-link text-white"> Destinos </a></li>
						<li class="nav-item"><a href="./reserva"
							class="nav-link text-white"> Reserva </a></li>
					</ul>
				</div>
			</div>
		</nav>
		<header class="tag">
			<h1 class="container">Usuários</h1>
		</header>

		<section class="container">

			<div class="py-4">

				<a href="./views/usuarios/create.html" class="btn btn-primary mb-2 botao1"> Novo Usuário </a>

				<table class="table table-responsive table-hover">
					<thead class="table-primary">

						<tr>

							<th scope="col">Id</th>
							<th scope="col">Nome</th>
							<th scope="col">E-mail</th>
							<th scope="col">Ações</th>
						</tr>
					</thead>
					<tbody>
					
					<jstl:forEach items="${listaUsuarios}" var="u">
						<tr>

							<td>${u.id}</td>

							<td>${u.nome}</td>

							<td>
							${u.email}
							</td>
						
							<td>

								<div class="d-flex">
										<a href="usuario-edit?id=${u.id}" class="mx-1" title="Editar">
											<i class="ri-file-edit-line"></i>
										</a> 
										<a href="usuario-delete?id=${u.id}" class="mx-1" title="Cancelar"
											onclick="return confirm('Deseja excluir o usuário ${u.nome}.')">
											<i class="ri-delete-bin-2-line"></i>
										</a>
									</div>
						        </td>
						</tr>
						</jstl:forEach>
					</tbody>
				</table>
				</div>
		</section>
		
		<br><br><br><br><br><br><br><br>
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