import 'package:flutter/material.dart';
import 'package:myapp/custom_widgets/custom_chat_widget.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        backgroundColor: const Color(0xff075E54),
      ),
      body: ListView(
        children: [
          customChatWidget(
              "AttaurRehman", "bla bla bla.......", "1:00 AM", Colors.red),
          customChatWidget(
              "Ali", "bla bla bla.......", "2:00 AM", Colors.blue),
          customChatWidget(
              "Saleem", "bla bla bla.......", "3:00 AM", Colors.green),
          customChatWidget(
              "Hassan", "bla bla bla.......", "4:00 AM", Color.fromARGB(255, 57, 92, 204)),
          customChatWidget(
              "Haroon", "bla bla bla.......", "5:00 AM", Colors.yellow),
          customChatWidget(
              "Anees", "bla bla bla.......", "6:00 AM", Color.fromARGB(255, 153, 62, 56)),
          customChatWidget(
              "Jamal", "bla bla bla.......", "8:00 AM", Color.fromARGB(255, 131, 182, 224)),
          customChatWidget(
              "Naeem", "bla bla bla.......", "10:00 AM", Colors.green),
          customChatWidget(
              "Kamran", "bla bla bla.......", "11:00 AM", Colors.black),
          customChatWidget(
              "Saddam", "bla bla bla.......", "9:00 AM", Colors.yellow),
          customChatWidget(
              "Jameel", "bla bla bla.......", "4:00 PM", Colors.red),
          customChatWidget(
              "Laraib", "bla bla bla.......", "7:00 PM", Colors.orange),
          customChatWidget(
              "Usman", "bla bla bla.......", "2:00 AM", Color.fromARGB(255, 23, 212, 29)),
          customChatWidget(
              "Rameez", "bla bla bla.......", "7:00 AM", Color.fromARGB(255, 102, 100, 100)),
          customChatWidget(
              "Waqas", "bla bla bla.......", "12:00 pM", Colors.yellow),
        ],
      ),
    );
  }
}
