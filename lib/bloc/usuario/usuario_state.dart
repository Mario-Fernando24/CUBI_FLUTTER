//es una parte del cubi.dart
part of 'usuario_cubi.dart';


//no van a cambiar para que no combie  @immutable
@immutable
abstract class UsuarioState{}
//englobe todos los estado que nuestra aplicacion va a tener 

class UsuarioInitial extends UsuarioState{
   //cuando tengo un usuario o no
   final existeUsuario = false; 
}

class UsuarioActivo extends UsuarioState{
    
     final existeUsuario = true; 
     final Usuario usuario;

    UsuarioActivo(this.usuario);
}











//En la próxima clase ustedes me verán escribir la siguiente línea de código

//context.bloc()
//La cual ya no es válida desde la versión 7 de Flutter_bloc, entonces deben de escribir esto:

//context.read()