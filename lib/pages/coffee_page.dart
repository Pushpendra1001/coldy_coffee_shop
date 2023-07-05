
import 'package:flutter/material.dart';

// ignore: camel_case_types
class coffee_page extends StatefulWidget {
  const coffee_page({super.key});


  @override
  State<coffee_page> createState() => _coffee_pageState();
}

// ignore: camel_case_types
class _coffee_pageState extends State<coffee_page> {
  var sweetness = 0.5;
  var icecream = 0.5;
  // ignore: non_constant_identifier_names
  var Choco = 0.5;

  // ignore: non_constant_identifier_names
  void customize_sweet(double newvalue){
   setState(() {
     sweetness = newvalue;
   }); 
  }

  // ignore: non_constant_identifier_names
  void customize_icecream(double newvalue){
   setState(() {
     icecream = newvalue;
   }); 
  }

  // ignore: non_constant_identifier_names
  void customize_choco(double newvalue){
   setState(() {
     Choco = newvalue;
   }); 
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.brown.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
        const SizedBox(height: 30,),
              Center(
                child: SizedBox(height: 300,
                width: 299,child: Image.asset('lib/coffee-cup.png'),
                ),
              ),
        
              const SizedBox(height: 40,),
              Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(child: Text("Sweet")),
            Slider(value: sweetness, onChanged: (value) => customize_sweet(value),
            divisions: 4,
            activeColor: Colors.brown,
            label: sweetness.toString(),
            ),
          ],
              ),
              Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: [
            const SizedBox(child: Text("IceCream")),
            Slider(value: icecream, onChanged: (value) => customize_icecream(value),
            divisions: 4,
            activeColor: Colors.brown,
            label: sweetness.toString(),
            ),
          ],
              ),
              Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(child: Text("Choco Chips")),
            Slider(value: Choco, onChanged: (value) => customize_choco(value),
            divisions: 4,
            activeColor: Colors.brown,
            label: sweetness.toString(),
            ),
          ],
              ),
              const SizedBox(
                height: 40,
              ),

              MaterialButton(onPressed: (){
                Navigator.pop(context);
                showDialog(context: context, builder: (context) =>
                 AlertDialog(
                  title: const Row(
                    children: [
                      Text("Successfully Added to Cart"),

                       Padding(
                         padding: EdgeInsets.symmetric(horizontal: 18),
                         child: Icon(Icons.done , color: Colors.green,),
                       ),
                    ],
                  ),
                  backgroundColor: Colors.brown.shade600,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  titleTextStyle: const TextStyle(color: Colors.white),
                 ),
                );

              },
              textColor: Colors.white,
              color: Colors.brown.shade600, child: const Text("Add to Cart"),
              
              )
            ],
          ),
        ),
      ),
    );
  }
}