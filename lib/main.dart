import 'package:flutter/material.dart';

void main() {
  runApp(RemindersApp());
}

class RemindersApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido a Finanzas',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            _buildFeature(
                Icons.account_balance_wallet, 'Resumen Financiero',
                'Revisa tu resumen financiero actualizado, incluyendo tu saldo, ingresos, y gastos, desde la creacion de tu cuenta.',
                Colors.green),
            _buildFeature(
                Icons.swap_vert, 'Últimas Transacciones',
                'Revisa las transacciones realizadas durante los ultimos 7 dias.',
                Colors.orange),
            _buildFeature(
                Icons.swap_horiz, 'Historial de transacciones',
                'Revisa el historial completo de trasacciones realizadas en tu cuenta.',
                Colors.red),
            _buildFeature(
                Icons.view_list, 'Maneja tus estadisticas',
                'Revisa tus estadisticas de una manera mas especifica, con una seccion especializada para cada accion y con la funcion de elegir intervalos de tiempo a tu antojo.',
                Colors.blue),
            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow.shade900,
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Continuar',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeature(IconData icon, String title, String description, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color, size: 30),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
