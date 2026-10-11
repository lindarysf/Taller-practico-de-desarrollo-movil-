import 'package:flutter/material.dart';

import '../widgets/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 10),
      children: const [
        ChatTile(
          avatarUrl: 'https://i.pinimg.com/736x/31/df/3f/31df3fef6e1b6c69bca59e1577541575.jpg',
          name: 'Lindarys',
          lastMessage:
              '¿Oigan el código corre en sus mentes o en la máquina? JAJAJA',
          time: '12:45 PM',
          hasUnread: true,
        ),
        ChatTile(
          avatarUrl: 'https://i.pinimg.com/736x/87/f4/18/87f4182429525a5c8c5c6cb789feea84.jpg',
          name: 'Daniela',
          lastMessage:
              'Manas, si me salgo de la carrera me pongo un puesto de arepas',
          time: '11:20 AM',
          hasUnread: true,
        ),
        ChatTile(
          avatarUrl: 'https://i.pinimg.com/736x/b7/04/83/b704830d902ef91b985a9e77140cdacc.jpg',
          name: 'Nicolas',
          lastMessage:
              'Oigan qué entraba para el parcial de hoy? Es para una tarea...',
          time: '10:15 AM',
          hasUnread: false,
        ),
        ChatTile(
          avatarUrl: 'https://i.pinimg.com/736x/19/1a/67/191a6773bc6d42ba24b40214ce855489.jpg',
          name: 'Natalia',
          lastMessage: 'Tengo un chisme buenísimo pero solo lo cuento si hay café de por medio',
          time: 'Ayer',
          hasUnread: true,
        ),
        ChatTile(
          avatarUrl: 'https://i.pinimg.com/736x/8e/8e/d2/8e8ed2f18cebfcd63ae64d90d256e691.jpg',
          name: 'Jessica',
          lastMessage:
              'Alguien me explica por qué mi widget no quiere salir centrado?!',
          time: 'Ayer',
          hasUnread: false,
        ),
        ChatTile(
          avatarUrl: 'https://i.pinimg.com/736x/3b/10/9a/3b109a43156b4f8e4a36df4f392a02cb.jpg',
          name: 'Juan',
          lastMessage: 'Confirmen si salimos temprano hoy para ir a comer algo',
          time: '2 Oct',
          hasUnread: false,
        ),
      ],
    );
  }
}
