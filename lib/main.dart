import 'package:dream_burger/src/pages/inicio_page.dart';
import 'package:dream_burger/src/pages/pedido_page.dart';
import 'package:dream_burger/src/pages/tablero_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Dream burger',
      initialRoute: 'inicio',
      routes: <String, WidgetBuilder>{
        'inicio' :(BuildContext context) => InicioPage(),
        'tablero' :(BuildContext context) => TableroPage(),
        'pedido' :(BuildContext context) => PedidoPage(),
      },
    );
  }
}