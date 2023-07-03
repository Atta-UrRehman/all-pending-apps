import 'package:flutter/material.dart';

customChatWidget(name, msg, time, color) {
  return ListTile(
    tileColor: Colors.grey[200],
    leading: CircleAvatar 
    (
      backgroundColor: Colors.white,
      radius: 20,
    ),
    title: Text("$name"),
    subtitle: Row(
      children: [
        const Icon(Icons.check),
        Text("$msg"),
      ],
    ),
    trailing: Column(
      children: [
        Text("$time"),
        const Icon(Icons.check_circle),
      ],
    ),
    // trailing: Icon(Icons.check),
  );
}
