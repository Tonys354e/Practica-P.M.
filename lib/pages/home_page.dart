import 'package:flutter/material.dart';  
import 'package:practica_movil/pages/loan_calculator_page.dart';

class HomePage extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      backgroundColor: Colors.grey[300],  
      body: Center(  
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,  
          children: [  
            // Usando la imagen con error builder  
            Container(  
              width: 150,  
              height: 150,  
              child: Image.asset(  
                'img/logo.jpg',  
                fit: BoxFit.cover, // Ajustar la imagen en el contenedor  
                errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {  
                  return Text('Error al cargar la imagen');  
                },  
              ),  
            ),  
            SizedBox(height: 20),  
            Text(  
              'Calculadora de Prestamos',  
              style: TextStyle(  
                fontSize: 24,  
                fontWeight: FontWeight.bold,  
                color: Colors.black,  
              ),  
            ),  
            SizedBox(height: 10),  
            Padding(  
              padding: const EdgeInsets.symmetric(horizontal: 20),  
              child: Text(  
                'obtenga el mejor trato gota a gota y saque su prestamo',  
                textAlign: TextAlign.center,  
                style: TextStyle(  
                  fontSize: 16,  
                  color: Colors.black54,  
                ),  
              ),  
            ),  
            SizedBox(height: 30),  
            ElevatedButton(  
              onPressed: () {  
                 Navigator.push(  
              context,  
              MaterialPageRoute(builder: (context) => LoanCalculator()),  
            );
              },  
              child: Text('Empezar'),  
              style: ElevatedButton.styleFrom(  
                backgroundColor: const Color.fromARGB(255, 5, 54, 94), 
                foregroundColor: Colors.white, 
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),  
                textStyle: TextStyle(fontSize: 18), 
              ),   
            ),  
          ],  
        ),  
      ),  
    );  
  }  
}