function mostrarSeccion(seccionId) {
    // Ocultar todas las secciones
    var secciones = document.getElementsByClassName('section');
    for (var i = 0; i < secciones.length; i++) {
      secciones[i].style.display = 'none';
    }
    
    // Mostrar la sección correspondiente al botón presionado
    var seccionAMostrar = document.getElementById(seccionId);
    seccionAMostrar.style.display = 'block';
  }
  