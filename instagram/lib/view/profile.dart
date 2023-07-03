import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widget,function/widget.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 700,
        // width: 500,
        // color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            const SizedBox(
              height: 30,
            ),
            customTextField(),

            ElevatedButton(
              onPressed: () {
                print(emailController.text);
                print(passController.text);
              },
              child: const Text('Login'),
            );
  }
}