import 'package:flutter/material.dart';
import 'package:personal/secondpage.dart';
import 'lib/secondpage.dart';



class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Container(
        child: Scaffold(
          backgroundColor: Colors.grey.shade300,
          body: Container(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  actions: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/images/MBAPPE1face.jpg"),
                      ),
                    ),
                  ],
                  title: Text("Premier League", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),),
                  expandedHeight: 200,
                  backgroundColor: Colors.white,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.parallax,
                    background: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Color(0xff370c3a).withOpacity(0.9),
                                  Color(0xff6b2474)
                                ]
                            )
                        ),
                        child: Container(
                            margin:  EdgeInsets.only(top: 120, left: 25, right: 25,bottom: 45),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Find your Favorite Team",
                                    hintStyle: TextStyle(fontSize: 16, color: Colors.grey, ),
                                    prefixIcon: Icon(Icons.search),
                                    hoverColor: Colors.red,
                                    suffixIcon: Icon(Icons.keyboard),
                                    border: InputBorder.none
                                ),
                              ),
                            )
                        ),
                      ),
                    ),
                  ),
                ),
                SliverList(
                    delegate: SliverChildListDelegate([
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              child: Container(
                                height: 50,
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
                                  child: Align(
                                    child: Text("Clubs",
                                      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  makeclubs(image: "assets/images/arsenal1.jpg"),
                                  makeclubs(image: "assets/images/chelsea1.jpg"),
                                  makeclubs(image: "assets/images/liverpool1.jpg"),
                                  makeclubs(image: "assets/images/manchester-city1.jpg"),
                                  makeclubs(image: "assets/images/Manchester-United.jpg"),
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Align(
                              child: Container(
                                height: 50,
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
                                  child: Align(
                                    child: Text("Teams",
                                      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(20),
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                      child: Container(
                                        margin: EdgeInsets.all(20),
                                        height: 50,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("assets/images/MBAPPE1face.jpg") )),
                                      )
                                  )
                                ],
                              ),
                            ),

                          ],
                        ),
                      )
                    ])
                )
              ],
            ),
          ),
        ),
      ),]
    );
  }

 Widget makeclubs({image}) {
    return(
    AspectRatio(aspectRatio: 2/2 ,
      child: Container(
        margin: EdgeInsets.only(right: 10,left: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(image)
        )
      ),
    ),
    )
    );
 }
}

class maketeams extends StatelessWidget {
  const maketeams({Key? key, this.image}) : super(key: key);

  final image ;

  @override
  Widget build(BuildContext context) {
    return (
        AspectRatio(
            aspectRatio: 2/2,
            child:Container(
              margin: EdgeInsets.only(right: 10,left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(image: AssetImage(image))
              ),
            ),
        )
    );
  }
}

