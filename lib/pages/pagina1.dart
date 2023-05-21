import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:singlenton/bloc/usuario/usuario_cubi.dart';
import 'package:singlenton/models/usuario.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: BodyScaffold(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: (){
          Navigator.pushNamed(context, 'pagina2');
        },
      ),
    );
  }
}

class BodyScaffold extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<UsuarioCubi, UsuarioState>(
      builder: ( _ , state) {
  
        //  if(state is UsuarioInitial){
        //       return Center( child: Text('No hay informacion del usuario'));
        //  }else if( state is UsuarioActivo ){
        //      return InformacionUsuario(state.usuario);
        //  }else{
        //      return Center( child: Text('Estado no reconocido'));
        //  }

        switch (state.runtimeType) {

          case UsuarioInitial:
          
          print(state);
              return Center( child: Text('No hay informacion del usuario'));
            break;
          case UsuarioActivo:
              return InformacionUsuario((state as UsuarioActivo).usuario);
            break;
          default:
          return Center( child: Text('Estado no reconocido${state}'));
        }


          
    });
  }
}

class InformacionUsuario extends StatelessWidget {

  final Usuario usuario;

  const InformacionUsuario(this.usuario);

  
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text('General', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),

          ListTile(title: Text('Nombre: ${usuario.nombre}'),),
          ListTile(title: Text('Edad: ${usuario.edad}'),),

          Text('Profesiones', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),
           
           ...usuario.profesion!.map(
            (e) => ListTile(
              title: Text(e),
            )).toList()



        ],
      ),
    );
  }
}