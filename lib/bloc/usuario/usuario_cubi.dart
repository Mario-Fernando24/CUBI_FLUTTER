//recibir peticiom
//hacer peticiones http
//cambios el estado
import 'package:flutter_bloc/flutter_bloc.dart';
//libreria mas pequeña que material
import 'package:meta/meta.dart';
import 'package:singlenton/models/usuario.dart';
// va hacer parte de esgte cubi la parte de los estados  
part 'usuario_state.dart';
//que tipo de informacion va a tener
//extiende de cubi 

// ubit<UsuarioCubi> {que tipo de informacion va a fluir
class UsuarioCubi extends Cubit<UsuarioState> {
  
  //valor inicjal del cubi (contructor)  
  UsuarioCubi() : super( UsuarioInitial());


  void seleccionarUsuario(Usuario usuario){
    //el imit va a emitir el nuevo estado
    emit(UsuarioActivo(usuario));
  }

}