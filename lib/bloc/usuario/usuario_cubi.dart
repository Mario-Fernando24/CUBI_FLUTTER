//recibir peticiom
//hacer peticiones http
//cambios el estado
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:singlenton/models/usuario.dart';
// part 'usuario_state.dart'; 
part 'usuario_state.dart';
//que tipo de informacion va a tener
class UsuarioCubi extends Cubit<UsuarioCubi> {
  
  UsuarioCubi(super.initialState);  

}