import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:singlenton/bloc/usuario/usuario_cubi.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: BlocBuilder<UsuarioCubi, UsuarioState>(
        builder: ( _ , state) {
            
           if(state is UsuarioInitial){
                return Center(
                  child: Text('No hay informacion del usuario'),
                );
           }else{
            return InformacionUsuario();
           }
            
            return InformacionUsuario();
        }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: (){
          Navigator.pushNamed(context, 'pagina2');
        },
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
 
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

          ListTile(title: Text('Nombre: '),),
          ListTile(title: Text('Edad: '),),

          Text('Profesiones', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),
          ListTile(title: Text('Profesión 1 '),),
          ListTile(title: Text('Profesión 2 '),),
          ListTile(title: Text('Profesión 3 '),),



        ],
      ),
    );
  }
}