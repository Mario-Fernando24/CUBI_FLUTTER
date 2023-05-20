import 'package:singlenton/models/usuario.dart';

class _UsuarioService{
   
   late Usuario _usuario;
   
   Usuario get usuario => _usuario;

   void cargarUsuario(Usuario user){

     _usuario = user;

   }

}

final usuarioService = new _UsuarioService();