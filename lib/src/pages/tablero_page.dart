// import 'dart:ffi';

import 'package:flutter/material.dart';


class TableroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: (){
                
                },
                child: Container(
                  height: 520,
                  child: FadeInImage(
                    fadeInDuration: Duration(milliseconds: 250),
                    placeholder: AssetImage('assets/img/2/jar-loading.gif'), 
                    image: AssetImage('assets/img/2/tablero6.png')),
                ),
              ),
              RaisedButton(
                color: Colors.amberAccent,
                shape: StadiumBorder(),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text('Continuar', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ),
                onPressed: (){
                  Navigator.pushNamed(context, 'pedido');
                },
              )
            ],
          ),
    );
  }
}