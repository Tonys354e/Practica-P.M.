import 'package:flutter/material.dart';  

class LoanApprovedPage extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: const Text('Aprobacion del Credito'),  
      ),  
      backgroundColor: Colors.grey[300],  
      body: const Center(  
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,  
          children: [  
            SizedBox(  
              width: 150,  
              height: 150,  
              child: Icon(  
                Icons.check_circle,  
                size: 100,  
                color: Colors.green,  
              ),  
            ),  
            SizedBox(height: 20),  
            Text(  
              '¡Felicidades!',  
              style: TextStyle(  
                fontSize: 24,  
                fontWeight: FontWeight.bold,  
              ),  
            ),  
            Text(  
              'Tu credito ha sido aprobado.',  
              style: TextStyle(  
                fontSize: 18,  
              ),  
              textAlign: TextAlign.center,  
            ), 
            Text(  
              'Cumpla con el pago si ama su vida .',  
              style: TextStyle(  
                fontSize: 07,  
              ),  
              textAlign: TextAlign.center,  
            ), 
            
          ],  
        ),  
      ),  
    );  
  }  
} 