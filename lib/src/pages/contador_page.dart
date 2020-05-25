import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ContadorState();
  }
}

class _ContadorState extends State<ContadorPage>{
  int contador = 0;
  final estilotexto = TextStyle(fontSize: 20);

  @override
  Widget build(BuildContext context) {
    // el Scaffold es el contenedor principal de una aplicacione en flutter
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicacion de Flutter'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      // cuerpo de mi contenedor
      body: Center(
        child: Column(
          // centrar la columna en el centro
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks', style:  estilotexto),
            Text('$contador', style:  estilotexto)
          ],
        )
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  // funcion para crear botones

 Widget _crearBotones(){
   return Row(
  mainAxisAlignment: MainAxisAlignment.end,
  children: <Widget>[
   SizedBox(width: 30),
   FloatingActionButton(onPressed: _igual_0, tooltip: 'Igualar a 0', child: Text('0')),
   Expanded(child: SizedBox()),
   FloatingActionButton(onPressed: _incrementar, tooltip: 'Incrementar Numero', child: Icon(Icons.add)),
   SizedBox(width: 5.0),
   FloatingActionButton(onPressed: _decrementar, tooltip: 'Decrementar Numero', child: Icon(Icons.minimize)),
   
  ],
);
 }


 // funciones del contador
 void _incrementar(){
  setState(() => contador++);
 }

 void _decrementar(){
    setState((){
       if(contador == 0)
       contador = 0;
       else
       contador--;
      });
}

void _igual_0(){
  setState(() => contador = 0);
}

}