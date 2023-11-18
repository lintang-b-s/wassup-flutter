import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final String avatar;
  final String title;
  final String message;
  final String messageDate;

  const ChatItem({
    Key? key,
    required this.avatar,
    required this.title,
    required this.message,
    required this.messageDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(avatar),
      ),
      title: Text(title),
      subtitle: Text(message),
      trailing: Text(messageDate),
      onTap: () {
        // Handle the tap event
      },
    );
  }
}
