import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  const ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          _buildCard(
            'Favoritos',
            'https://i.pinimg.com/736x/1a/d3/e4/1ad3e46ecd880c19e721e44ef653982f.jpg',
          ),
          _buildCard(
            'Guardados',
            'https://i.pinimg.com/1200x/2c/4a/53/2c4a53a7133ff3c1e173f71562b9b361.jpg',
          ),
          _buildCard(
            'Compartidos',
            'https://i.pinimg.com/736x/73/43/66/734366e69933862033b4e0a06cb1a857.jpg',
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String title, String imageUrl) {
    return Container(
      width: 130,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFF5E9D0), // Vanilla
        border: Border.all(color: const Color(0xFFda6c81).withOpacity(0.4)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              imageUrl,
              height: 90,
              width: 130,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Color(0xFFBF2B54),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
