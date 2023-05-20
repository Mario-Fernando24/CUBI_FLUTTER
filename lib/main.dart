import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:singlenton/bloc/usuario/usuario_cubi.dart';
import 'package:singlenton/pages/pagina1.dart';
import 'package:singlenton/pages/pagina2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        //puedo agregar muchos cubi que queramos para que este en el arbol de widget
        BlocProvider(create: ((context) => UsuarioCubi()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'pagina1',
        routes: {
          'pagina1': ( _ ) => Pagina1Page(),
          'pagina2': ( _ ) => Pagina2Page()
        },
      ),
    );
  }
}