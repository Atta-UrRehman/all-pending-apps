import 'package:class3/widgets/custom_textField.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        // body: Padding(
        //   padding: const EdgeInsets.only(left: 20,right: 20,),
          body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customTextField("Email", false, emailController),
              const SizedBox(
                height: 30,
              ),
              customTextField("Password", true, passController),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print(emailController.text);
                  print(passController.text);
                },
                child: const Text('Login'),
              )
            ],
          ),
        ));
  }
}
