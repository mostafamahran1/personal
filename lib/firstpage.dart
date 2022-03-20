import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:personal/signup_signout.dart';



class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration:
               BoxDecoration(
                 image: DecorationImage(
                     image: AssetImage("assets/images/premier league 1.jpg"),
                     fit: BoxFit.cover)
           ),
          ),
           Align(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 30),
                  child: Text((""),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),),
                )
              ],
          ),
           ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Container(
                height: 58,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                      Colors.red.withOpacity(0.8),
                        Colors.red,
                        Colors.red.withOpacity(0.8)
                      ]
                    )
                  ),
                  child: TextButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => signuporsignout() )); },
                  child: Text("START", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),),),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
