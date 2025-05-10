import '../patrones/biblioteca_observer.dart';

class BibliotecaService extends Biblioteca {
  void devolverLibro(String libro) {
    print("✅ El libro '$libro' ha sido devuelto.");
    notificarUsuarios(libro);
  }
}