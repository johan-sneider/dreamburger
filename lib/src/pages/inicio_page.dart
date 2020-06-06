import 'package:flutter/material.dart';


class  InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
      _crearFondo(),
      Column(
        children: <Widget>[
          SizedBox(height: 70,),
          _crearLogo(),
          _crearBoton(context),
        ],
      ),
      // _crearLogo(),

      ],
    );
  }

  Widget _crearFondo() {
    return Container(
      height: double.infinity,
        width: double.infinity,
        child: Image.asset('assets/img/2/entrar-app2.jpg'),
    );
  }

  Widget _crearLogo(){

    return Center(
      child: Container(
        height: 150,
        child: Image.asset('assets/img/2/dreamburger2.png'),
      ),
    );

  }

  Widget _crearBoton(BuildContext context){

    return RaisedButton(
      // colorBrightness: Brightness.dark,
      elevation: 2,
      color: Colors.black,
      shape: StadiumBorder(side: BorderSide(width: 3 )),      
      onPressed: (){
        Navigator.pushNamed(context, 'tablero');
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Text('ENTRAR', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 20),),
      ),
    );
  }


}