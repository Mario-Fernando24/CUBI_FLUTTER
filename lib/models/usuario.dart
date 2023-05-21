class Usuario{

  final String ?nombre;
  final int ?edad;
  final List<String> ?profesion;

   Usuario({this.nombre, this.edad, this.profesion});


    //metodo que regresa un usuario
    Usuario copyWith({String ?nombre,int ?edad,List<String> ?profesion}){

      return Usuario(
        nombre: nombre  ?? this.nombre,
        edad: edad  ?? this.edad,
        profesion: profesion  ?? this.profesion
    );

   }

   

}