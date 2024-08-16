import 'package:flutter/material.dart';
import 'loan_approved_page.dart'; // Importa la nueva página

class LoanResultPage extends StatelessWidget {
  final double loanAmount;
  final double loanTerm;
  final double interestRate;
  final double monthlyPayment;
  final double totalInterest;
  final double totalPayment;

  LoanResultPage({
    required this.loanAmount,
    required this.loanTerm,
    required this.interestRate,
    required this.monthlyPayment,
    required this.totalInterest,
    required this.totalPayment,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del Prestamo'),
      ),
      backgroundColor: Colors.grey[300],  
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            SizedBox(height: 20),
            buildInfoContainer(
              title: 'Monto del prestamo',
              value: 'S/ ${loanAmount.toStringAsFixed(2)}',
            ),
            buildInfoContainer(
              title: 'Periodo en meses',
              value: '${loanTerm.toStringAsFixed(0)}',
            ),
            buildInfoContainer(
              title: 'Interes anual',
              value: '${interestRate.toStringAsFixed(2)}%',
            ),
            SizedBox(height: 20),
            buildInfoContainer(
              title: 'Cuota mensual',
              value: 'S/ ${monthlyPayment.toStringAsFixed(2)}',
              isBold: true,
            ),
            buildInfoContainer(
              title: 'Total de interes a pagar',
              value: 'S/ ${totalInterest.toStringAsFixed(2)}',
              isBold: true,
            ),
            buildInfoContainer(
              title: 'Total a pagar',
              value: 'S/ ${totalPayment.toStringAsFixed(2)}',
              isBold: true,
            ),
            const SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoanApprovedPage(),
                    ),
                  );
                },
                child: const Text('Saca tu prestamo'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInfoContainer({
    required String title,
    required String value,
    bool isBold = false,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              color: const Color.fromARGB(255, 7, 102, 48),
            ),
          ),
        ],
      ),
    );
  }
}
