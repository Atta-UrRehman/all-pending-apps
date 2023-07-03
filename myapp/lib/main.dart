// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'custom_widgets/custom_chat_widget.dart';
import 'views/chat_view.dart';
import 'views/home_view.dart';
import 'custom_widgets/custom_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ChatView(),
      // home: HomeView(),
    );
  }
}
