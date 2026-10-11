import 'package:flutter/material.dart';

class PromotionalBanner extends StatelessWidget {
  const PromotionalBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF5E9D0), // Vanilla
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFda6c81)),
      ),
      child: Row(
        children: [
          const Icon(Icons.local_offer, size: 40, color: Color(0xFFBF2B54)),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Promoción Especial',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFBF2B54),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Explora nuevos contenidos y descubre las novedades de nuestra comunidad.',
                  style: TextStyle(fontSize: 13, color: Colors.black87),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
