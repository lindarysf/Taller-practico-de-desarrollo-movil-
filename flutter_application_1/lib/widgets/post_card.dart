import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String avatarUrl;
  final String username;
  final String postImageUrl;
  final String description;

  const PostCard({
    super.key,
    required this.avatarUrl,
    required this.username,
    required this.postImageUrl,
    required this.description,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 2,
      color: const Color(0xFFF5E9D0), // Vanilla para la tarjeta
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                CircleAvatar(backgroundImage: NetworkImage(widget.avatarUrl)),
                const SizedBox(width: 10),
                Text(
                  widget.username,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFBF2B54),
                  ),
                ),
              ],
            ),
          ),
          Image.network(
            widget.postImageUrl,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              widget.description,
              style: const TextStyle(color: Colors.black87, fontSize: 13),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  color: isLiked ? const Color(0xFFBF2B54) : Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                },
              ),
              const Text(
                'Me gusta',
                style: TextStyle(color: Color(0xFFBF2B54)),
              ),
              const SizedBox(width: 20),
              IconButton(
                icon: const Icon(
                  Icons.comment_outlined,
                  color: Color(0xFFBF2B54),
                ),
                onPressed: () {},
              ),
              const Text(
                'Comentar',
                style: TextStyle(color: Color(0xFFBF2B54)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
