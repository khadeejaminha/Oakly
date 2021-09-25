import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            icon: Icon(Icons.search_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () { },
          ),
        ],
      ),

      body: Container(
        child: Column(
          children: [
            SizedBox(height: 10,width: 10,),
            Text("Shop Modern Designed Furnitures!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            SizedBox(height: 30,),
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 70,width: 20,),
                      Text("Chairs",
                        style: TextStyle(
                        fontSize: 17,
                          fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(width: 20,),
                      Text("Sofas"),
                      SizedBox(width: 20,),
                      Text("Tables"),
                      SizedBox(width: 20,),
                      Text("Cupboards"),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 120,
                              width: 170,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                  child: Image.asset('assets/chair1.jpg', fit: BoxFit.cover,),
                              ),),
                            SizedBox(height: 10,),
                          Text("Yellow Chair",style: TextStyle(
                            fontSize: 15
                          ),),
                          SizedBox(height: 10,),
                          Text("\$24", style: TextStyle(
                            fontSize: 15
                          ),),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),),
          ],
        ),
      ),
    );
  }
}