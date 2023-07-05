import 'package:coldy/pages/coffee_page.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class coffe extends StatelessWidget {
  final String name;
  const coffe({super.key , required this.name });

  @override
  Widget build(BuildContext context) {
    return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30 ,vertical: 15),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const coffee_page(),));
                },
                child: Container(
                  height: 70,
              
                  decoration: BoxDecoration(
                    color: Colors.brown.shade200,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                          
                      // Icon(Icons.coffee_sharp),
                      Row(
                  
                        children: [
                          const SizedBox(width: 20,),
                      Image.asset('lib/coffee-cup.png' , cacheHeight: 30 , cacheWidth: 30, ),
                      const SizedBox(width: 20,),
                          Text(name),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.arrow_forward),
                      ),
                      
                    ],
                  ),
                ),
              ),
            );
  }
}