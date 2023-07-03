import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:storage/service/storageinstance.dart';


class ChildView extends StatelessWidget {
  ChildView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Text("${snapshot.data}");
          } else {
            return const CircularProgressIndicator();
          }
        },
        future: StorageIns.getData(),
      ),
    );
  }
}