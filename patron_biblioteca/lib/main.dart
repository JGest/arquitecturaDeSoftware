import 'modelos/libro.dart';
import 'patrones/libro_factory.dart';
import 'patrones/libro_decorator.dart';
import 'servicios/biblioteca.dart';
import 'patrones/biblioteca_observer.dart';

void main() {
  // Crear libros con Factory Method
  var libro1 = LibroFactory.crearLibro("fisico", "El Quijote", "Cervantes");
  var libro2 = LibroFactory.crearLibro("digital", "Clean Code", "Robert C. Martin");

  libro1.mostrarDetalles();
  libro2.mostrarDetalles();

  // Aplicar el Decorator
  var libroRecomendado = LibroRecomendado(libro1);
  libroRecomendado.mostrarDetalles();

  // Observer: Notificar usuarios cuando un libro esté disponible
  var biblioteca = BibliotecaService();
  var usuario1 = Usuario("Juan");
  var usuario2 = Usuario("Pedro");

  biblioteca.registrarUsuario(usuario1);
  biblioteca.registrarUsuario(usuario2);

  biblioteca.devolverLibro("El Principito");
}
