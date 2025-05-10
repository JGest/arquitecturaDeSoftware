import '../modelos/libro_fisico.dart';
import '../modelos/libro_digital.dart';
import '../modelos/libro.dart';

class LibroFactory {
  static Libro crearLibro(String tipo, String titulo, String autor) {
    if (tipo == "fisico") {
      return LibroFisico(titulo, autor);
    } else if (tipo == "digital") {
      return LibroDigital(titulo, autor);
    } else {
      throw Exception("Tipo de libro no reconocido");
    }
  }
}
