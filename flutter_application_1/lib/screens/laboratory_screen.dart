import 'package:flutter/material.dart';

import '../widgets/numeric_counter.dart';

class LaboratoryScreen extends StatelessWidget {
  const LaboratoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Prueba de Interactividad y Variables',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            NumericCounter(),
          ],
        ),
      ),
    );
  }
}
