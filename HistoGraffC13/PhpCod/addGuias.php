<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HistoGraff</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="icon" type="img/png" href="../Imagenes/favicon.png">
    <link rel="stylesheet" href="../css/TourSolicitados.css">
</head>
<body>
<header>
<nav class="navbar navbar-light bg-light navbar-fixed-top">
		  <!--Logo-->
		  <a class="navbar-brand" href="../Administrador.html">
		    <img src="../Imagenes/HistoGraff.png"  width="43" height="35" class="d-inline-block align-top" alt="">
		    HistoGraff
		  </a>
		  <ul>
            <!--Botones de navegacion-->
            <a class="barraNavegacion" href="#">Guias</a>
            <a class="barraNavegacion" href="Graffiti.php">Editar Galeria</a>
		    <a class="barraNavegacion" href="#">Tours Solicitados</a>
		    <a class="barraNavegacion" href="../LoginAdmin.html">Cerrar Sesion</a>
		  </ul>   
	  </nav>
    <br>
</header>
<div class="container p-4">
            <div class="row">
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <form id="addGuias">
                              <div class="form-group">
                                <label>Identificacion Guia</label>
                                <input type="number" id="id" placeholder="identificacion" class="form-control">
                              </div>
                                <div class="form-group">
                                    <Label>Nombre Guia</Label>
                                    <input type="text" id="name" placeholder="Nombre" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Apellido Guia</label>
                                    <input type="text" id="apellido" placeholder="Apellido" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Telefono</label>
                                    <input type="number" id="tel" placeholder="Telefono" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" id="email" placeholder="email" class="form-control">
                                </div>
                                <button type="submit" class="btn btn-primary vtn-block text-center">Agregar</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-7">
                    <table class="table table-responsive table-striped">
                    <thead>
                        <tr>
                            <td>Id Guia</td>
                            <td>Nombres</td>
                            <td>Apellidos</td>
                            <td>Telefono</td>
                            <td>Email</td>
                        </tr>
                    </thead>
                    <tbody id="listarguias"></tbody>
                    </table>
                </div>
            </div>
    

    <script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
</body>
</html>