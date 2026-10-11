import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String avatarUrl;
  final String name;
  final String lastMessage;
  final String time;
  final bool hasUnread;

  const ChatTile({
    super.key,
    required this.avatarUrl,
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.hasUnread,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFF5E9D0), // Vanilla
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: hasUnread
              ? const Color(0xFFBF2B54).withOpacity(0.5)
              : const Color(0xFFda6c81).withOpacity(0.2),
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 24,
          backgroundImage: NetworkImage(avatarUrl),
        ),
        title: Text(
          name,
          style: TextStyle(
            fontWeight: hasUnread ? FontWeight.bold : FontWeight.w600,
            color: const Color(0xFFBF2B54), // Raspberry
          ),
        ),
        subtitle: Text(
          lastMessage,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black87,
            fontWeight: hasUnread ? FontWeight.w500 : FontWeight.normal,
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              time,
              style: TextStyle(
                fontSize: 12,
                color: hasUnread
                    ? const Color(0xFFBF2B54)
                    : Colors.grey.shade600,
                fontWeight: hasUnread ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            const SizedBox(height: 6),
            if (hasUnread)
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Color(0xFFBF2B54),
                  shape: BoxShape.circle,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
