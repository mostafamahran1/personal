

import 'package:flutter/material.dart';

import 'login.dart';



class signuporsignout extends StatefulWidget {
  const signuporsignout({Key? key}) : super(key: key);

  @override
  State<signuporsignout> createState() => _signuporsignoutState();
}

class _signuporsignoutState extends State<signuporsignout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Column(
              children: [
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(60)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/premier-league.jpg"),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 40,left: 20, right: 20,bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [BoxShadow(
                              color: Colors.purple,
                              blurRadius: 20,
                              offset: Offset(0,10)
                          ),
                          ]
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                              child: Center(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Enter your email or your phone",
                                    hintStyle: TextStyle(color: Colors.grey,),
                                    prefixIcon: Icon(Icons.keyboard,color: Colors.purple,),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [BoxShadow(
                              color: Colors.purple,
                              blurRadius: 20,
                              offset: Offset(0,10)
                          ),
                          ]
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Enter your Password",
                                    hintStyle: TextStyle(color: Colors.grey,),
                                    prefixIcon: Icon(Icons.vpn_key,color: Colors.purple,),
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25,),
                    Container(
                      child: Column(
                        children: [
                          Text("Forget Password ?", style: TextStyle( color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 13 ),)
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.purple,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xff370c3a),
                                  Color(0xff6b2474).withOpacity(0.5),
                                ]
                            )
                        ),
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => login() ));
                        },child: Text("Login",
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Column(children: [
                      Text("Continue with Social media", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 13)),
                    ],),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff295396),
                            ),
                            child: TextButton(onPressed: (){},child: Text("FaceBook",
                              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),),
                          ),
                          SizedBox(width: 15,),
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff7523bf),
                                    Color(0xffc3206f),
                                    Color(0xffdc8d40)
                                  ]
                                )
                              ),
                              child: TextButton(onPressed: (){},child: Text("Instagram",
                                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
      ),
    );
  }
}
