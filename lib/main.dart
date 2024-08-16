import 'package:flutter/material.dart';  
import 'package:practica_movil/pages/home_page.dart'; // Asegúrate de que la ruta sea correcta  
import 'package:practica_movil/pages/loan_calculator_page.dart';
import 'package:practica_movil/pages/loan_approved_page.dart'; // Asegúrate de que la ruta sea correcta  

void main() {  
  runApp(MyApp());  
}  

class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      title: 'Calculadora de Prestamos',  
      theme: ThemeData(  
        primarySwatch: Colors.blue,  
      ),  
      home: HomePage(),  // Estableces HomePage como la pantalla inicial  
    );  
  }  
}