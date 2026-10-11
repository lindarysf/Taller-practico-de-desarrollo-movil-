import 'package:flutter/material.dart';

import '../widgets/post_card.dart';
import '../widgets/promotional_banner.dart';
import '../widgets/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        PromotionalBanner(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            'Categorías Destacadas',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFFBF2B54),
            ),
          ),
        ),
        ImageCarousel(),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            'Publicaciones',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFFBF2B54),
            ),
          ),
        ),
        PostCard(
          avatarUrl: 'https://i.pinimg.com/736x/06/61/30/0661309d9d74cc4d3356c1650edf67cb.jpg',
          username: 'Lindarys Fragozo',
          postImageUrl: 'https://i.pinimg.com/1200x/dc/08/ea/dc08ea704e612a791c2f7674255083d1.jpg',
          description: 'De peores domingos me he librado.',
        ),
        PostCard(
          avatarUrl: 'https://i.pinimg.com/736x/a3/5d/db/a35ddb05ec57367efe372f6f2e83e3f8.jpg',
          username: 'Wendy Suárez',
          postImageUrl: 'https://i.pinimg.com/1200x/a3/b0/0a/a3b00ab00c4035c39a2e0bc9f24ee392.jpg',
          description: 'Esperando las vacaciones, porque como dice Chayanne:\n"Mi cuerpo, mi mente y mi alma ya no tienen conexión"',
        ),
      ],
    );
  }
}
