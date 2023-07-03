import 'package:apis/model/homemodel.dart';
import 'package:flutter/material.dart';

import '../controller/homecontroller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
          future: getUserController(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {

                    var myuser = snapshot.data[index] as user;

                    return ListTile(
                      title: Text("${myuser.name}"),
                      leading:const FlutterLogo(),
                      subtitle: Text("${myuser.email}"),
                      trailing: Text("${myuser.phone}"),
                      // subtitle: Text(snapshot.data[index]['username']),
                    );
                  });
            } else {
              return const CircularProgressIndicator();
            }
          }),
    );
  }
}
