// import 'dart:math';

// import 'dart:html';

import 'package:flutter/material.dart';

class PedidoPage extends StatefulWidget {
  @override

  _PedidoPageState createState() => _PedidoPageState();
}
  var valor = 0; 

class _PedidoPageState extends State<PedidoPage> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _crearAppBar(),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              _crearOpciones(),
              _crearOpciones2(),
              _crearAcompanante(),
              _crearBebida(),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _crearTotal(),
              ),
              _crearDatosCliente(),
              SizedBox(height: 10,),
              _crearBotones(),
              
            ]
          )
        )


        ],
      ),

      
    );
  }

  Widget _crearAppBar(){

    return SliverAppBar(
              leading: Icon(Icons.arrow_back),
                centerTitle: true,
                elevation: 2.0,
                
                backgroundColor: Colors.black,
                expandedHeight: 220.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: 
                  Container(
                    color: Colors.black,
                    child: FadeInImage(
                      fit: BoxFit.cover,
                      placeholder: AssetImage('assets/img/2/icono_dream_burger_pequeno.png'),
                      image: AssetImage('assets/img/2/icono_dream_burger_pequeno.png',)
                    ),
                  )
                ),
              );
  }

  Widget _crearOpciones() {

    return Container(
      // decoration: BoxDecoration(border: Border.all()),
      height: 300,
      width: 220,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _crear1Card(),
          _crear2Card()
          
        ],
      ),
     
      
      // child: ,
    );
    

  }


  Widget _crear1Card(){

    return Card(
            elevation: 5,
            child: Container(
              width: 145,
              height: 290,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    margin: EdgeInsets.all(5),
                    // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.black, borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        
                        Text('SELECCIONE UN PAN', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _crearPanes('Pan tradicional', true),
                      _crearPanes('Pan frances', false),
                      _crearPanes('Pan briochet', true),
                      _crearPanes('Pan perro', false),
                    
                    ],
                  ),
                ],
              ),
            )
          );

  }

  Widget _crearPanes(String pan, bool bul){

    return Container(
      height: 55,
      child: Row( children: <Widget>[
        Checkbox(
          value: bul,
          onChanged:(bool newValue) {
          setState(() {
            }
           );
          }, 
        ),
          Text(pan, style: TextStyle(fontSize: 13),)
        ],
      ),
    );
  }
  
  Widget _crear2Card(){

    return Card(
            elevation: 5,
            child: Container(
              height: 290,
              width: 195,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                      height: 45,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      alignment: AlignmentDirectional(1.0, 1.0),
                      decoration: BoxDecoration(
                        color: Colors.black, borderRadius: BorderRadius.circular(10)
                      ),
                      child:                        
                          Text('SELECCIONE SU CARNE PREFERIDA', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),
                          textAlign: TextAlign.center,
                          )
                  ),
                  
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _crearSencillaDoble(),
                        _crearCarnes('Angus',       false, true),
                        _crearCarnes('Res',         true, false),
                        _crearCarnes('Cerdo',       true, false),
                        _crearCarnes('Pollo',       true, false),
                        _crearCarnes('Vegetari-ana', true, false),
                      
                      ],
                    ),
                  ),
                ],
              ),
            )
          );

  }

  Widget _crearSencillaDoble(){

    return Row(
      children: <Widget>[
        SizedBox(width: 70,),
        Text('Sencilla', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),),
        SizedBox(width: 10,),
        Text('Doble', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13))
      ],
    );
  }

  Widget _crearCarnes(String carne, bool bul, bool bul2 ){
    return Container(
        height: 37,
        decoration: BoxDecoration(
          
          // border: Border.all()
        ),
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            
            TableRow( 
              
              children: <Widget>[
                Text(carne,style: TextStyle(fontSize: 13)),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    // border: Border.all()
                  ),
                  child: Checkbox(
                    value: bul,
                    onChanged:(bool newValue) {
                    setState(() {
                      }
                     );
                    }, 
                  ),
                ),
                Checkbox(
                  value: bul2,
                  onChanged:(bool newValue) {
                  setState(() {
                    }
                   );
                  }, 
                ),
              ],
            )
          ],
        ),
    );
    
    
  }
   
  Widget _crearOpciones2(){

    return Container(
      // decoration: BoxDecoration(
      //   border: Border.all()
      // ),
      height: 360,
      
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _crear3Card(),
          _crear4Card()
          
        ],
      ),
     
      
      // child: ,
    );

  }

  Widget _crear3Card(){
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: <Widget>[
          Container(
            width: 160,
            decoration: BoxDecoration(
              // border: Border.all()
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  // width: 130,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'ELIGE EL QUESO DE TU PREFERENCIA',
                    style: TextStyle(color: Colors.white , 
                    fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                      _crearQueso(false, 'Queso crema'),
                      _crearQueso(false, 'Queso mozarella'),
                      _crearQueso(false, 'Queso americano'),
                      _crearQueso(false, 'Queso cheddar'),
                      _crearQueso(false, 'Queso azul'),
                      _crearQueso(false, 'Queso philadephia'),
      
                      ],
                    ),
                ),
            ],
            )
          ),
        ],
      ),
    );
  }

  Widget _crearQueso(bool bul, String queso){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: Checkbox(
              value: bul, 
              onChanged: (bool newValue) {
                setState(() {
                }
              );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Text(queso, style: TextStyle(fontSize: 12),))
        ],
      ),
    );

  }

  Widget _crear4Card(){
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: 180,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 55,
              // width: 170,
              child: Text(
                'EXPERIMENTA EN TUS ADICIONALES',
                style: TextStyle(color: Colors.amber , 
                fontWeight: FontWeight.bold,),
                textAlign: TextAlign.center,
              ),
            ),
          _crearAdicionales(true, 'Piña', true, 'Guacamole'),
          _crearAdicionales(true, 'Tocineta', true, 'Encebollado'),
          _crearAdicionales(true, 'Maduro', true, 'Champiñones'),
          _crearAdicionales(true, 'Salchicha', true, 'Aros cebolla'),
          _crearAdicionales(true, 'Maicitos', true, 'Jalapeños'),
          _crearAdicionales(true, 'Pepinillos', true, 'Gratinado'),
          ],
    ),
      ),
    
    );
    
  }

  Widget _crearAdicionales(bool bul, String adicion, bool bul2, String adicion2){
    return Container(
        height: 47,
        width: 190,
        decoration: BoxDecoration(
          // border: Border.all()
        ),
        child: Table(
          children: [
            TableRow( 
              children: <Widget>[
                  Container(
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      // border: Border.all()
                    ),
                    child: Checkbox(
                      value: bul,
                      onChanged:(bool newValue) {
                      setState(() {
                        }
                      );
                      }, 
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(

                      adicion, style: TextStyle(fontSize: 10),
                    )
                  ),
                  Container(
                    
                    decoration: BoxDecoration(
                      // border: Border.all()
                    ),
                    padding: EdgeInsets.only(right:0, left: 0),
                    child: Checkbox(
                      value: bul2,
                      onChanged:(bool newValue) {
                      setState(() {
                        }
                       );
                      }, 
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15, right: 0),
                    child: Text(
                      adicion2, style: TextStyle(fontSize: 10),
                      )
                  )
                
              ],
            )

          ],
        ),
      
    );
  }
  
  Widget _crearAcompanante(){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(20),
              color: Colors.black,
            ),
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            height: 55,
            child: Text('ELIGE SU QUIERES ACOMPAÑAR TU HAMBURGUESA CON: ', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 15), textAlign: TextAlign.center,),
          ),
         
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                      value: true,
                      onChanged:(bool newValue) {
                      setState(() {
                        }
                       );
                      }, 
                    ),
                Text('Aros de cebolla', style: TextStyle(fontSize: 12),),
                SizedBox(width: 40,),
                Checkbox(
                      value: true,
                      onChanged:(bool newValue) {
                      setState(() {
                        }
                       );
                      }, 
                    ),
                Text('Papas a la francesa',  style: TextStyle(fontSize: 12)),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _crearBebida(){
    return Container(); 
  }

  Widget _crearTotal(){
    return Container(
      
      child: Text('TOTAL:  $valor', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,), ),
    ); 
  }

  Widget _crearDatosCliente(){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(20),
          border: Border.all( color: Colors.grey),
          
          // shape: BoxShape.rectangle
        ),
        padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'DATOS PARA EL DOMICILIO', 
                        style: TextStyle(
                          fontSize: 18, 
                          fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Column(
                      children: <Widget>[
                        TextField(
                          textCapitalization: TextCapitalization.words,
                          decoration: InputDecoration(
                            hintText: 'Escribe tus nombres y apellidos',
                            labelText: 'Nombres y apellidos',
                            labelStyle: TextStyle(color: Colors.black),
                            // helperText: 'El nombre',
                            suffixIcon: Icon(Icons.clear, color: Colors.blue,),     
                            fillColor: Colors.black,
                            hoverColor: Colors.black,
                            icon: Icon(Icons.person, color: Colors.blue, ),
                            border:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20,),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextField(
                          keyboardType: TextInputType.phone,
                                                 
                          decoration: InputDecoration(

                            labelText: 'Celular',
                            hintText: 'Escribe tu numero de celular',
                            labelStyle: TextStyle(color: Colors.black),
                            // helperText: 'El nombre',
                            suffixIcon: Icon(Icons.clear, color: Colors.blue,),     
                            fillColor: Colors.black,
                            hoverColor: Colors.black,
                            icon: Icon(Icons.phone_iphone, color: Colors.blue,),
                            border:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20,),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Direccion',
                            hintText: 'Escribe tu direccion de residencia',
                            labelStyle: TextStyle(color: Colors.black),
                            // helperText: 'El nombre',
                            suffixIcon: Icon(Icons.clear, color: Colors.blue,),     
                            fillColor: Colors.black,
                            hoverColor: Colors.black,
                            icon: Icon(Icons.home, color: Colors.blue,),
                            border:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20,),
                            ),
                          ),
                        ),

                        SizedBox(height: 10,)

                      ],
                    )
                    
        
                  )


                ],
              ),
              
            
        ),
    );
  }
   
  Widget _crearBotones(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          RaisedButton(
            elevation: 5,
            shape: StadiumBorder(),
            color: Colors.amber,
            onPressed: (){},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('BORRAR', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15), ),
            ),
          ),
          RaisedButton(
            
            elevation: 5,
            shape: StadiumBorder(),
            color: Colors.black,
            onPressed: (){},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              child: Text('ENVIAR', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.amber),
              ),
            ),
          )
        ],
      ),
    );
  }

}