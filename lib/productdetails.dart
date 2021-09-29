import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:oakly/homepage.dart';

class ProductDetails extends StatelessWidget {

  const  ProductDetails({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);

  final String image;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Homepage()));
          },
        ),
        title: const Text("Details",
        style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            color: Colors.black,
            onPressed: () { },
          ),
          IconButton(
            icon: const Icon(Icons.favorite_outline_rounded),
            color: Colors.black,
            onPressed: () { },
          ),
        ],
      ),

      body: Stack(
        children: [
          Image.asset(image ,
            height: 300,width: 400,fit: BoxFit.cover,),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(25),
              height: 400, width: 400,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Text(name,
                    style: const TextStyle(
                    fontSize: 35,
                      fontWeight: FontWeight.bold,
                  ),),
                  const SizedBox(height: 15,),
                  Text(price,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),),
                  const SizedBox(height: 15,),
                  const Text("Wood Furniture Solid Wood Indian rosewood dining Chair "
                      "set of 2 Enhance your home with the beautifully designed wooden "
                      "dining Chair set and give a rich look to your dining room. "
                      "This dining Chair is made from Indian rosewood which is strong & "
                      "robust in nature.Décor you dining room with this amazing masterpiece "
                      "and grab all the compliments from your guests."
                  ),
                  const SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white,
                        primary: Colors.black,
                      ),
                      onPressed: () {},
                      label: const Text("Add to cart"),
                      icon: const Icon(Icons.shopping_cart_outlined),
                    ),
                      const Icon(
                        Icons.favorite_outline,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );

  }
}
