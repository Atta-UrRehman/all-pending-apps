import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class GetProduct extends StatelessWidget {
  GetProduct({super.key});
  CollectionReference products =
      FirebaseFirestore.instance.collection("products");

  getAllProducts() async {
    return products.get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: FutureBuilder(
             // future: getAllProducts(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data.docs.length,
                      itemBuilder: (context, index) {
                        
                        return ListTile(
                          title: Text(snapshot.data.docs[index]['ProductName']),
                          subtitle: Text(
                              "${snapshot.data.docs[index]['ProductPrize']} ${snapshot.data.docs[index]['ProductQty']}"),

                          // : Text(snapshot.data.docs[index]['Product Qty']),
                        );
                      });
                } else {
                  return const CircularProgressIndicator();
                }
                //  Center(
                //   child: ElevatedButton(onPressed: () {
                    
                //   }, child: Text("Back")),
                // ),
              }
              
              )
              
              ),
              
               
    );
    
  }
}
