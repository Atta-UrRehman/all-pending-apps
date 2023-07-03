import 'package:flutter/material.dart';
import 'package:storage/service/storageinstance.dart';
import 'childview.dart';

// ignore: must_be_immutable
class Homeview extends StatelessWidget {
  Homeview({super.key});

  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextField(
            controller: inputController,
          ),
          ElevatedButton(
              onPressed: () {
                StorageIns.addData(inputController.text);
              },
              child:const Text("Add Data to storage")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChildView()),
                );
              },
              child: Text("Open Child View")),
        ],
      ),
    );
  }
}