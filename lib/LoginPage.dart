import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oakly/HomePage.dart';

class LoginPage extends StatelessWidget{
  get style => null;

  @override
  Widget build(BuildContext context){

    return Scaffold(

      body: Column(
        children: [

          Container(
            width: 400,
            height: 350,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/banner.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: const [
                Positioned(
                  left: 30,
                  top: 120,
                  child: Text("OAKLY",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white
                  ),),
                ),
                Positioned(
                  left: 47,
                  top: 170,
                  child: Text('-DESIGNED FURNITURES-',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.white
                    ),),
                )
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                const SizedBox(height: 10,),

                Row(
                    children: const [
                      Icon(Icons.person),
                      SizedBox(width: 30,),
                      Text(
                        'USERNAME',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                ),

                const Divider(thickness: 2,),
                const SizedBox(height: 13,),

                Row(
                  children: const [
                    Icon(Icons.lock),
                    SizedBox(width: 30,),
                    Text(
                      'PASSWORD',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),

                const Divider(thickness: 2,),

                Row(
                  children: const [
                    SizedBox(width: 160,),
                    Text('Forgot Password?'),
                  ],
                ),

                const SizedBox(height: 30),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.black,
                    minimumSize: const Size(300,50),
                  ),
                  child: const Text("Login"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                    },
                ),

                const SizedBox(height: 5,),

                Row(
                  children: [

                    const SizedBox(width: 25,),
                    const Text("Don't have an account?",
                    style: TextStyle(
                      fontSize: 15,
                    ),),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                        onPressed: (
                            ) {},
                        child: const Text("SIGN UP")),]
                ),
              ],

            ),
          ),
        ],
      ),
    );

  }
}