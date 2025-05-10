import 'libro.dart';

class LibroDigital extends Libro {
  LibroDigital(String titulo, String autor) : super(titulo, autor);

  @override
  void mostrarDetalles() {
    print("Libro Digital: $titulo por $autor");
  }
}
