// import 'package:fbclass1/screen/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'login.dart';

// ignore: must_be_immutable
class SignupView extends StatelessWidget {
  SignupView({super.key});
  TextEditingController myemail_control = TextEditingController();
  TextEditingController mypass_control = TextEditingController();
    TextEditingController myname_control = TextEditingController();

  signup(context) async {
    try {
      // ignore: unused_local_variable
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: myemail_control.text,
        password: mypass_control.text,
      //  hashCode: myname_control.text,
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Loginview(),
        ),
      );
    } on FirebaseAuthException
    // #1 the snackbar show Errors in login Form...
    catch (e) {
      print(e.toString());
      var snackbar = SnackBar(content: Text(e.toString()));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Vector1.jpg"), fit: BoxFit.cover)),
      child: Container(
        height: 400,
        width: 500,
        color: Colors.grey.shade200,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 150,
                  right: 150,
                  top: 150,
                  // padding:EdgeInsets.only(
                  //   left: MediaQuery.of(context).size.height*0.4,
                  //   right: MediaQuery.of(context).size.height*0.4
                  //   ,
                  //   top:80
                ),
                child:
                    Image.asset("assets/Vector1.png", height: 100, width: 100),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 40,
                    left: 40,
                    bottom: 30,
                  ),
                  child: Column(
                    children: [
                      TextField(
                        controller: myname_control,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Name",
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 19),
                      TextField(
                        controller: myemail_control,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Email",
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 19),
                      TextField(
                        controller: mypass_control,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Loginview()),
                            );
                          },
                          child: const Text("I have an account! let's Login..",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  inherit: true))),
                      const SizedBox(height: 30),
                      Container(
                        width: 250, height: 40,

                        // padding: EdgeInsets.all(30),

                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, // Background color
                              onPrimary:
                                  Colors.black, // Text Color (Foreground color)
                            ),
                            onPressed: () {
                              signup(context);
                              // ignore: unused_local_variable
                              final snackBar = SnackBar(
                                  content: const Text('Hi, I am a SnackBar!'),
                                  backgroundColor: (Colors.black12),
                                  action: SnackBarAction(
                                    label: 'dismiss',
                                    onPressed: () {},
                                  ));
                            },
                            child: const Text("signup",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                ))),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
