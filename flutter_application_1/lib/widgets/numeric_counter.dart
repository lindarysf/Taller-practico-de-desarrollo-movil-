import 'package:flutter/material.dart';

class NumericCounter extends StatefulWidget {
  const NumericCounter({super.key});

  @override
  State<NumericCounter> createState() => _NumericCounterState();
}

class _NumericCounterState extends State<NumericCounter> {
  int _counterValue = 0;

  void _increment() {
    setState(() {
      if (_counterValue < 20) {
        _counterValue++;
      }
    });
  }

  void _decrement() {
    setState(() {
      if (_counterValue > 0) {
        _counterValue--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Control de Cantidad (Laboratorio)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              '$_counterValue',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: _decrement,
                  icon: const Icon(Icons.remove),
                  label: const Text('Disminuir'),
                ),
                const SizedBox(width: 16),
                ElevatedButton.icon(
                  onPressed: _increment,
                  icon: const Icon(Icons.add),
                  label: const Text('Aumentar'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Límites: Mínimo 0, Máximo 20',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
