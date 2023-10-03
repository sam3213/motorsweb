
document.getElementById("roles").addEventListener("change", function() {
  var seleccion = this.value; // Obtenemos el valor seleccionado
  
  // Verificamos si se seleccionó "Opción 2" y mostramos la advertencia
  if (seleccion === "Vendedor") {
    alert("Si eliges registrarte como Taller o Vendedor, tu cuenta será activada después de una breve revisión por parte del administrador. ¡Gracias por tu comprensión!");
  }
});
