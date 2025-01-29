import 'package:estados/models/usuario.dart';

import 'package:get/state_manager.dart';

class UsuarioController extends GetxController {
  RxBool userExist = false.obs;
  Rx usuario = Usuario().obs;

  void cargarUsuario(Usuario newUser) {
    this.usuario.value = newUser;
    userExist.value = true;
  }

  void cambiarEdad(int edad) {
    usuario.update((val) {
      val?.edad = edad;
    });
  }

  void borrarUsuario() {
    usuario.value = Usuario();
    userExist.value = false;
  }
}
