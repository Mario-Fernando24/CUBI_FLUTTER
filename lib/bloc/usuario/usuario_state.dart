//es una parte del cubi.dart
part of 'usuario_cubi.dart';


//no van a cambiar para que no combie  @immutable
@immutable
abstract class UsuarioState{}
//englobe todos los estado que nuestra aplicacion va a tener 

class UsuarioInitial extends UsuarioState{

   //cuando tengo un usuario o no
   final existeUsuario = false; 

   @override
  String toString() {
    // TODO: implement toString
    return 'UsuarioInitial: Existe usuario : false';
  }

}