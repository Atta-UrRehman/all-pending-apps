import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'getProduct.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _HomeView();
}

class _HomeView extends State<AddProduct> {
  TextEditingController productName = TextEditingController();
  TextEditingController productPrice = TextEditingController();
  TextEditingController Productqty = TextEditingController();

  addProduct() {
    CollectionReference products =
 FirebaseFirestore.instance.collection("products");

    products
        .add({
          'ProductName': productName.text,
          'ProductPrize': productPrice.text,
          'ProductQty': Productqty.text,
        })
        .then((value) => print("Product Addes"))
        .catchError((e) => print(e));

    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => GetProduct()));
    // ElevatedButton(onPressed: (){}, child: child)
  }
   //_formKey.currentState!.save();
  // if (_formKey.currentState!.validate()) {
  //   print("Form is vaid ");

  //   print('Data for login $productData');

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Add New Product'),
      ),
      body: SingleChildScrollView(
        child: Card(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: Form(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: productName,
                        decoration: const InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Product Name"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
        
                      const SizedBox(
                        height: 20,
                      ),
        
                      TextFormField(
                        controller: productPrice,
                        decoration: const InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Product Prize"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
        
                      const SizedBox(
                        height: 20,
                      ),
        
                      TextFormField(
                        controller: Productqty,
                        decoration: const InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Quantity"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                  
                      const SizedBox(
                        height: 60,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 250, height: 40,
        
                // padding: EdgeInsets.all(30),
        
                // decoration: const BoxDecoration(
                // borderRadius: BorderRadius.all(Radius.circular(50))),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Background color
                    onPrimary: Colors.black, // Text Color (Foreground color)
                  ),
                  onPressed: () {
                   addProduct();
                  },
                  child: const Text('Submit',
                      style: TextStyle(fontSize: 18, color: Colors.black)),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Background color
                    onPrimary: Colors.black, // Text Color (Foreground color)
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GetProduct()),
                    );
                  },
                  child: Text("View Product"))
            ],
          ),
        ),
      ),
    );
  }
}