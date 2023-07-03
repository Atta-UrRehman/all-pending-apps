import 'package:apis/controller/addcontroller.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

TextEditingController title = TextEditingController();
TextEditingController body = TextEditingController();

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            TextField(
              controller: title,
            ),
            TextField(
              controller: body,
            ),
            ElevatedButton(onPressed: () {
                  addUserController({
                    "title": title.text,
                    "body": body.text,
                    "userId": 1,
                  });
                }, child: Text("Add User"))           
          ]),
        ));
  }
}
