import 'package:flutter/material.dart';

import '../widget/widget.dart';

class View extends StatelessWidget {
  const View({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Form"),
      ),
      body: Container(
        height: 500,
        width: 500,
        color: Colors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              createmycontainer(),
              createmycontainer(),
              createmycontainer(),
            ]),
      ),
    );
  }
}
