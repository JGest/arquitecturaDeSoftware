abstract class Observador {
  void actualizar(String mensaje);
}

class Biblioteca {
  List<Observador> usuarios = [];

  void registrarUsuario(Observador usuario) {
    usuarios.add(usuario);
  }

  void notificarUsuarios(String libro) {
    for (var usuario in usuarios) {
      usuario.actualizar("El libro '$libro' está disponible.");
    }
  }
}

class Usuario implements Observador {
  String nombre;

  Usuario(this.nombre);

  @override
  void actualizar(String mensaje) {
    print("$nombre recibió una notificación: $mensaje");
  }
}
