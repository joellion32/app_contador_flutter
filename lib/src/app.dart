import 'package:flutter/material.dart';
import 'package:prueba/src/pages/contador_page.dart';

class MyApp extends StatelessWidget{
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     home: Center(
       child: ContadorPage()
       )
   );
 } 
}