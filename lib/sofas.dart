import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:oakly/loginpage.dart';
import 'package:oakly/productdetails.dart';
import 'package:oakly/homepage.dart';
import 'package:oakly/chairs.dart';
import 'package:oakly/tables.dart';
import 'package:oakly/beds.dart';



class Sofas extends StatelessWidget{
  const Sofas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)  {

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
                MaterialPageRoute(builder: (context) => const Loginpage()));
          },
        ),
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



      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 10,width: 25,),

            const Text("Shop Modern Designed Furnitures!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),

            const SizedBox(height: 10,),

            const SizedBox(height: 20,),

            Container(
              width: 310,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Row(
                children: const [
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
                const SizedBox(height: 70,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.black,
                    minimumSize: const Size(30,30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  child: const Text('All'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Homepage()));
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
                  child:  const Text('Chairs'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Chairs()));
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.grey,
                    minimumSize: const Size(30,30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  child:  const Text('Sofas'),
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
                  child:  const Text('Tables'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Tables()));
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
                  child:  const Text('Beds'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Beds()));
                  },
                ),
              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ProductLists(image: 'assets/images/sofa1.jpg', name: 'White Sofa', price: 'Rs. 15000'),
                ProductLists(image: 'assets/images/sofa2.jpg', name: 'Green Sofa', price: 'Rs. 9999'),
              ],
            ),

            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ProductLists(image: 'assets/images/sofa3.jpg', name: 'Black Sofa', price: 'Rs. 20000'),
                ProductLists(image: 'assets/images/sofa4.jpg', name: 'Case Sofa', price: 'Rs. 17999'),
              ],
            ),

            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ProductLists(image: 'assets/images/sofa5.jpg', name: 'Grey Sofa', price: 'Rs. 22000'),
                ProductLists(image: 'assets/images/sofa6.jpg', name: 'Casual Sofa', price: 'Rs. 15999'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class ProductLists extends StatelessWidget {

  const  ProductLists({
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
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) => ProductDetails(
                  image: image,
                  name: name,
                  price: price,
                )));
      },

      child: Container(
        height: 230,
        width: 170,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[100],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              width: 160,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(image ,fit: BoxFit.cover,),
              ),
            ),
            const SizedBox(height: 10,),
            Text(name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),),
            const SizedBox(height: 10,),
            Text(price,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),),
          ],
        ),
      ),
    );
  }
}

