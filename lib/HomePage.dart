import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scroll_navigation/scroll_navigation.dart';
import 'package:oakly/Details.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context)  {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () { },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
              SizedBox(height: 10,width: 25,),
              Text("What are you\nlooking for?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
                ],
              ),

              SizedBox(height: 20,),

              Container(
                width: 310,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(
                      FontAwesomeIcons.search,
                    ),
                    SizedBox(width: 20,),
                    Text("Search Here..."),
                  ],
                ),
              ),



              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 70,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.black,
                      primary: Colors.grey,
                      minimumSize: const Size(30,30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    child: const Text("All"),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Details()));
                          },
                        ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: Colors.black,
                      minimumSize: const Size(30,30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    child: const Text("Chairs"),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: Colors.black,
                      minimumSize: const Size(30,30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    child: const Text("Sofas"),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: Colors.black,
                      minimumSize: const Size(30,30),
                      shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    child: const Text("Tables"),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: Colors.black,
                      minimumSize: const Size(30,30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    child: const Text("Beds"),
                    onPressed: () {},
                  ),
                ],
                    ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductDesign(image: 'assets/images/chair1.jpg', name: 'Yellow chair', price: '\$250'),
                  ProductDesign(image: 'assets/images/sofa1.jpg', name: 'Yellow chair', price: '\$250'),
                ],
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductDesign(image: 'assets/images/bed1.jpg', name: 'Yellow chair', price: '\$250'),
                  ProductDesign(image: 'assets/images/table1.jpg', name: 'Yellow chair', price: '\$250'),
                ],
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductDesign(image: 'assets/images/chair2.jpg', name: 'Yellow chair', price: '\$250'),
                  ProductDesign(image: 'assets/images/sofa2.jpg', name: 'Yellow chair', price: '\$250'),
                ],
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductDesign(image: 'assets/images/bed2.jpg', name: 'Yellow chair', price: '\$250'),
                  ProductDesign(image: 'assets/images/table2.jpg', name: 'Yellow chair', price: '\$250'),
                ],
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductDesign(image: 'assets/images/chair3.jpg', name: 'Yellow chair', price: '\$250'),
                  ProductDesign(image: 'assets/images/sofa3.jpg', name: 'Yellow chair', price: '\$250'),
                ],
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductDesign(image: 'assets/images/bed3.jpg', name: 'Yellow chair', price: '\$250'),
                  ProductDesign(image: 'assets/images/table3.jpg', name: 'Yellow chair', price: '\$250'),
                ],
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductDesign(image: 'assets/images/chair4.jpg', name: 'Yellow chair', price: '\$250'),
                  ProductDesign(image: 'assets/images/sofa4.jpg', name: 'Yellow chair', price: '\$250'),
                ],
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductDesign(image: 'assets/images/bed4.jpg', name: 'Yellow chair', price: '\$250'),
                  ProductDesign(image: 'assets/images/table4.jpg', name: 'Yellow chair', price: '\$250'),
                ],
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductDesign(image: 'assets/images/chair5.jpg', name: 'Yellow chair', price: '\$250'),
                  ProductDesign(image: 'assets/images/sofa5.jpg', name: 'Yellow chair', price: '\$250'),
                ],
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductDesign(image: 'assets/images/bed5.jpg', name: 'Yellow chair', price: '\$250'),
                  ProductDesign(image: 'assets/images/table5.jpg', name: 'Yellow chair', price: '\$250'),
                ],
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductDesign(image: 'assets/images/chair6.jpg', name: 'Yellow chair', price: '\$250'),
                  ProductDesign(image: 'assets/images/sofa6.jpg', name: 'Yellow chair', price: '\$250'),
                ],
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductDesign(image: 'assets/images/bed6.jpg', name: 'Yellow chair', price: '\$250'),
                  ProductDesign(image: 'assets/images/table6.jpg', name: 'Yellow chair', price: '\$250'),
                ],
              ),





                  ],
                ),
              ),
      ),
    );
  }
}

class ProductDesign extends StatelessWidget {
  const  ProductDesign({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
}) : super(key: key);

  final String image;
  final String name;
  final String price;

@override
Widget build(BuildContext context){
  return GestureDetector(

    child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 160,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(image ,fit: BoxFit.cover,),
              ),
            ),
            SizedBox(height: 10,),
            Text(name),
            SizedBox(height: 10,),
            Text(price),
          ],
        ),
    );
}
}