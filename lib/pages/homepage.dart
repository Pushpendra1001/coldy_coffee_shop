// import 'package:coldy/components/bottombar.dart';
import 'package:coldy/components/coffes.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


// ignore: camel_case_types
class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      backgroundColor: Colors.brown.shade300,
      body:const SafeArea(
        child:  Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 14,),
            Center(
              child: Text("Coldy Coffee Shop", style: TextStyle(fontWeight: FontWeight.bold , fontSize: 22),),
            ),

            SizedBox(height: 30,),

            coffe(name: "Normal Cold Coffee"),
            coffe(name: "Cold Coffe With icecream"),
            coffe(name: "Cold Coffee With Choco ",),
            coffe(name: "Ice Coffee"),
            coffe(name: "Iced Mocha")
           
            
          ],
        ),
      ),
    bottomNavigationBar: const GNav(
      tabs: [
      GButton(icon: Icons.home),
      GButton(icon: Icons.search),
      GButton(icon: Icons.shopping_cart)
    ])


    );

  }
}