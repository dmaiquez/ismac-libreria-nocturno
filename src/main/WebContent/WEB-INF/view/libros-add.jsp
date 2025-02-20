<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	 <h1>Libros</h1>
	 <form action="add" method="post" >
	 	<input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}" >
	 	titulo
	 	<input type="text" id="titulo" name="titulo" value="${libro.titulo}" >
	 	<br>
	 	editorial
	 	<input type="text" id="editorial" name="editorial" value="${libro.editorial}" >
	 	<br>
		Numero de Paginas
	 	<input type="number" id="numPaginas" name="numPaginas" value="${libro.numPaginas}" >
	 	<br>
		Edicion
	 	<input type="text" id="edicion" name="edicion" value="${libro.edicion}" >
	 	<br>
		idioma
	 	<input type="text" id="idioma" name="idioma" value="${libro.idioma}" >
	 	<br>
		fecha de Publicacion
	 	<input type="date" id="fechaPublicacion" name="fechaPublicacion" value="${fn:substring(libro.fechaPublicacion,0,10)}" >
	 	<br>
		Descripcion
	 	<input type="text" id="descripcion" name="descripcion" value="${libro.descripcion}" >
	 	<br>
		Tipo Pasta
	 	<input type="text" id="tipoPasta" name="tipoPasta" value="${libro.tipoPasta}" >
	 	<br>
		ISBN
	 	<input type="text" id="iSBN" name="iSBN" value="${libro.iSBN}" >
	 	<br>
		Numero de  Ejemplares
	 	<input type="number" id="numEjemplares" name="numEjemplares" value="${libro.numEjemplares}" >
	 	<br>
		Portada		
	 	<input type="text" id="portada" name="portada" value="${libro.portada}" >
	 	<br>
		Presentacion		
	 	<input type="text" id="presentacion" name="presentacion" value="${libro.presentacion}" >
	 	<br>
		Precio		
	 	<input type="number" step="any" id="precio" name="precio" value="${libro.precio}" >
	 	<br>
		Categoria

		<select id="idCategoria"  name="idCategoria">
			<c:forEach var="item" items="${categorias}">
				<option id="" value="${item.idCategoria}" ${item.idCategoria == libro.categoria.idCategoria ? 'selected': '' }  >${item.categoria}</option>
			</c:forEach>		
		</select>
		<br>
		Autor
		<select id="idAutor"  name="idAutor">
			<c:forEach var="item" items="${autores}">
				<option id="" value="${item.idAutor}" ${item.idAutor == libro.autor.idAutor ? 'selected': '' } >${item.nombre}  ${item.apellido}</option>
			</c:forEach>		
		</select>		
		<br>
		<button type="submit">Guardar</button>
	 	<button type="button" onclick="window.location.href='/ismac-libreria-nocturno-web/libros/findAll'; return false;">Cancelar</button>
	 </form>
</body>
</html>