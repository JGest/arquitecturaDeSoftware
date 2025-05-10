import 'libro.dart';

class LibroFisico extends Libro {
  LibroFisico(String titulo, String autor) : super(titulo, autor);

  @override
  void mostrarDetalles() {
    print("📖 Libro Físico: $titulo por $autor");
  }
}
