import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:singlenton/bloc/usuario/usuario_cubi.dart';
import 'package:singlenton/models/usuario.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {

    final usuarioCubit = context.read<UsuarioCubi>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue[100],
              child: Text('Establecer usuario'),
              onPressed: (){

                final newUsuario = new Usuario(
                  nombre: 'Fernando Herrera',
                  edad: 29,
                  profesion: [
                    'Develope',
                    'Base de datos',
                    'Quimica'
                  ]
                );
                //llamar al cubi con la funcion seleccionarUsuario y le envio el modelo usuario
                usuarioCubit.seleccionarUsuario(newUsuario);
              }
            ),
              MaterialButton(
              color: Colors.blue[100],
              child: Text('Cambiar edad'),
              onPressed: (){
                usuarioCubit.cambiarEdad(50);
              }
            ),
              MaterialButton(
              color: Colors.blue[100],
              child: Text('Añadir profesión'),
              onPressed: (){}
            )
          ],
        )
      ),
    );
  }
}