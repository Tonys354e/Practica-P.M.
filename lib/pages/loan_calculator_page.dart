import 'package:flutter/material.dart';  
import 'loan_result_page.dart'; 
import 'dart:math';


class LoanCalculator extends StatefulWidget {
  const LoanCalculator({super.key});
  
  @override  
  
  _LoanCalculatorState createState() => _LoanCalculatorState();  
}  

class _LoanCalculatorState extends State<LoanCalculator> {  
  double loanAmount = 10000;  
  double loanTerm = 24;  
  double interestRate = 10;  

  
  double calculateMonthlyPayment(double loanAmount, double interestRate, double loanTerm) {  
    double monthlyInterestRate = interestRate / 100 / 12;  
    return (loanAmount * monthlyInterestRate) / (1 - pow((1 + monthlyInterestRate), -loanTerm));  
  }  

  double calculateTotalInterest(double loanAmount, double monthlyPayment, double loanTerm) {  
    return (monthlyPayment * loanTerm) - loanAmount;  
  }  

  double calculateTotalPayment(double loanAmount, double totalInterest) {  
    return loanAmount + totalInterest;  
  }  

  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: const Text('Calculadora de Pr3stamos'),  
      ),  
      backgroundColor: Colors.grey[300],
      body: Padding(  
        padding: const EdgeInsets.all(16.0),  
        child: Column(  
          children: [  
            Text('Monto del prestamo: S/ ${loanAmount.toStringAsFixed(2)}'),  
            Slider(  
              value: loanAmount,  
              min: 1000,  
              max: 50000,  
              divisions: 49,  
              label: loanAmount.round().toString(),  
              onChanged: (value) {  
                setState(() {  
                  loanAmount = value;  
                });  
              },  
            ),  
            Text('Plazo del prestamo: ${loanTerm.toStringAsFixed(0)} meses'),  
            Slider(  
              value: loanTerm,  
              min: 6,  
              max: 36,  
              divisions: 30,  
              label: loanTerm.round().toString(),  
              onChanged: (value) {  
                setState(() {  
                  loanTerm = value;  
                });  
              },  
            ),  
            Text('Tasa de interes anual: ${interestRate.toStringAsFixed(0)}%'),  
            Slider(  
              value: interestRate,  
              min: 1,  
              max: 50,  
              divisions: 49,  
              label: interestRate.round().toString(),  
              onChanged: (value) {  
                setState(() {  
                  interestRate = value;  
                });  
              },  
            ),  
            ElevatedButton(  
              onPressed: () {  
                double monthlyPayment = calculateMonthlyPayment(loanAmount, interestRate, loanTerm);  
                double totalInterest = calculateTotalInterest(loanAmount, monthlyPayment, loanTerm);  
                double totalPayment = calculateTotalPayment(loanAmount, totalInterest);  
                
                Navigator.push(  
                  context,  
                  MaterialPageRoute(  
                    builder: (context) => LoanResultPage(  
                      loanAmount: loanAmount,  
                      loanTerm: loanTerm,  
                      interestRate: interestRate,  
                      monthlyPayment: monthlyPayment,  
                      totalInterest: totalInterest,  
                      totalPayment: totalPayment,  
                    ),  
                  ),  
                );  
              },  
              child: const Text('Calcular'),  
            ),  
          ],  
        ),  
      ),  
    );  
  }  
}