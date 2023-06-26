function eliminarProducto(id) {
  Swal.fire({
    title: '¿Estás Seguro?',
    text: 'Estás apunto de eliminar un producto, no podrás revertir cambios.',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'Si',
    cancelButtonText: 'Cancelar',
  }).then((result) => {
    if (result.isConfirmed) {
      Swal.fire('Eliminado!','Producto Eliminado Correctamente','success').then(function() {
          window.location.href = "/delete/"+id+"/";
      })
    }
  })
}

function eliminarProductoCarrito(producto_id) {
  Swal.fire({
    title: '¿Estás Seguro?',
    text: 'Estás apunto de quitar un producto de tu carrito.',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#3085d6',
    cancelButtonColor: '#d33',
    confirmButtonText: 'Si',
    cancelButtonText: 'Cancelar',
  }).then((result) => {
    if (result.isConfirmed) {
      Swal.fire('Eliminado!','Producto Eliminado Correctamente','success').then(function() {
          window.location.href = "/remover_carro/"+producto_id+"/";
      })
    }
  })
}