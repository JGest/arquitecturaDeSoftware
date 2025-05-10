import '../modelos/libro.dart';

abstract class LibroDecorator extends Libro {
  Libro libro;

  LibroDecorator(this.libro) : super(libro.titulo, libro.autor);
}

class LibroRecomendado extends LibroDecorator {
  LibroRecomendado(Libro libro) : super(libro);

  @override
  void mostrarDetalles() {
    libro.mostrarDetalles();
    print("⭐ Este libro es altamente recomendado.");
  }
}
