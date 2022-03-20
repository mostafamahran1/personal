import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondpage extends StatefulWidget {
  const secondpage({Key? key}) : super(key: key);

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  late PageController _pageController;

  void initState(){
    _pageController = PageController(
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPageView(),
    );
  }

  PageView buildPageView() {
    return PageView(
      controller: _pageController,
      children: [
        makepages(
            name: "Kylian Mbappe",
            images:"assets/images/mbappe.jpg",
            KprimaryColor: Color(0xff0b014b) ,
            KsecondColor: Color(0xff08003d),
            age: "23 years" ,
            descriptions: "Kylian Mbappé Lottin is a French professional footballer who plays as a forward for Ligue 1 club Paris Saint-Germain and the France national team. Considered one of the best players in the world, he is known for his dribbling, speed, and finishing." ,
            assists: " 104 assists" ,
            born: " December 20, 1998 (age 23 years), 19th arrondissement of Paris, Paris, France ",
            Goals: "184 Goals",
            height: "1.78 m" ,
            Nationality: "French" ,
            salary: "22 million EUR" ,
            weight: " 73 kg" ,
            gradient: [Color(0xff0b014b).withOpacity(0.9),
              Colors.grey.withOpacity(0.1),],
            imageone: "assets/images/MBAPPE1.jpg",
            imagetwo: "assets/images/MBAPPE2.jpg",
            imagethree: "assets/images/MBAPPE3.jpg",
            imagefour: "assets/images/kylian-mbappe.jpg"
        ),
        makepages(
            name:"Lionel Messi" ,
            images:"assets/images/missi 2.jpeg",
            KprimaryColor: Color(0xff3f424b) ,
            KsecondColor: Color(0xff363840),
            age: "34 years",
            descriptions: "Lionel Andrés Messi, also known as Leo Messi, is an Argentine professional footballer who plays as a forward for Ligue 1 club Paris Saint-Germain and captains the Argentina national team.",
            assists: "266 assists" ,
            born: "June 24, 1987 (age 34 years), Rosario, Argentina" ,
            Goals: "672 Goals",
            height: "1.69 m",
            Nationality:"Argentine" ,
            salary: "41 million USD",
            weight: "67 kg",
            gradient:[Color(0xff3f424b).withOpacity(1),
              Color(0xff3f424b).withOpacity(0.5),
              Colors.grey.withOpacity(0.1),],
            imageone: "assets/images/MISSI1.jpg",
            imagetwo: "assets/images/MISSI2.jpg" ,
            imagethree: "assets/images/MISSI3.jpg" ,
            imagefour: "assets/images/Messi4.jpg"
        ),
        makepages(
            name: "Mohamed Salah" ,
            images: "assets/images/mosalah.jpg",
            KprimaryColor: Color(0xffd93b38) ,
            KsecondColor: Color(0xffb52826),
            age: " 29 years" ,
            assists: "44 assists" ,
            descriptions: "Mohamed Salah Hamed Mahrous Ghaly is an Egyptian professional footballer who plays as a forward for Premier League club Liverpool and captains the Egypt national team. Considered one of the best players in the world, he is known for his finishing, dribbling, and speed." ,
            born: "June 15, 1992 , Nagrig" ,
            Goals: "149 Goals" ,
            height: "1.75 m" ,
            Nationality: "Egyptian" ,
            salary: "100 million EUR" ,
            weight: "73 kg" ,
            gradient: [Color(0xffd93b38).withOpacity(1),
              Color(0xffd93b38).withOpacity(0.5),
              Colors.grey.withOpacity(0.1),] ,
            imageone: "assets/images/MOSALAH1.jpg",
            imagetwo: "assets/images/MOSALAH2.jpg" ,
            imagethree: "assets/images/MOSALAH3.jpg" ,
            imagefour: "assets/images/MOSALAH4.jpg"
        ),
        makepages(
            name: "Neymar" ,
            images: "assets/images/neymar.jpg",
            KprimaryColor: Color(0xff1c1c1c) ,
            KsecondColor: Colors.black,
            age: "30 years" ,
            assists: "53 assists" ,
            descriptions: "Neymar da Silva Santos Júnior, known as Neymar, is a Brazilian professional footballer who plays as a forward for Ligue 1 club Paris Saint-Germain and the Brazil national team. He is widely regarded as one of the best players in the world." ,
            born: "February 5, 1992 , Mogi das Cruzes, State of São Paulo, Brazil" ,
            Goals: "90 goals" ,
            height: "1.75 m" ,
            Nationality: "Brazilian" ,
            salary: "36.8 million EUR" ,
            weight: "68 kg" ,
            gradient: [Color(0xff1c1c1c).withOpacity(0.9),
              Colors.grey.withOpacity(0.1),],
            imageone: "assets/images/NEMAR1.jpg" ,
            imagetwo: "assets/images/NEMAR2.jpg" ,
            imagethree: "assets/images/NEMAR3.jpg" ,
            imagefour: "assets/images/NEMAR4.jpg"
        ),
        makepages(
            name: "Cristiano Ronaldo",
            images:"assets/images/ronaldo.jpg",
            KprimaryColor: Color(0xff0f752b) ,
            KsecondColor: Color(0xff0c6023),
            age: "37 years",
            descriptions: "Cristiano Ronaldo dos Santos Aveiro GOIH ComM is a Portuguese professional footballer who plays as a forward for Premier League club Manchester United and captains the Portugal national team." ,
            assists:" 42 assists" ,
            born: "February 5, 1985 , Hospital Dr. Nélio Mendonça, Funchal, Portugal" ,
            Goals: "140 goals" ,
            height: "1.87 m" ,
            Nationality: "Portuguese" ,
            salary: "26.52 million GBP" ,
            weight: "85 kg" ,
            gradient: [Color(0xff0f752b).withOpacity(1),
              Color(0xff0f752b).withOpacity(0.6),
              Colors.grey.withOpacity(0.1),] ,
            imageone: "assets/images/CR1.jpg" ,
            imagetwo: "assets/images/CR2.jpg" ,
            imagethree: "assets/images/CR3.jpg" ,
            imagefour: "assets/images/CR4.jpg"
        ),
      ],
    );
  }

  Widget makepages({KprimaryColor, KsecondColor,  imageone, imagetwo, imagefour, imagethree ,images,Goals, gradient,descriptions, name, assists, age, born, height, Nationality , weight , salary}) {
    return(
        Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar (
                  expandedHeight:400 ,
                  backgroundColor : KprimaryColor,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(images),
                          )
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: gradient,
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(name, style: TextStyle( fontSize: 30, color: Colors.white , fontWeight: FontWeight.bold ),),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Text(Goals, style: TextStyle(fontSize: 16 , color: Colors.grey ),),
                                  SizedBox(width: 26,),
                                  Text(assists, style: TextStyle(fontSize: 16 , color: Colors.grey ),),
                                  SizedBox(width: 26,),
                                  Text(age, style: TextStyle(fontSize: 16 , color: Colors.grey ),),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverList(
                    delegate: SliverChildListDelegate([
                      Container(
                        //height: 1000,
                        decoration: BoxDecoration(
                          color: KprimaryColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all(color: Colors.white),
                                  color: KsecondColor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(17.0),
                                  child: Text(descriptions,
                                    style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
                                  ),
                                ),
                              ),
                              SizedBox(height: 40,),
                              Text(" Born", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 35),),
                              SizedBox(height: 20,),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all(color: Colors.white),
                                  color: KsecondColor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(17.0),
                                  child: Text(born,
                                    style: TextStyle(color: Colors.grey, fontSize: 16),),
                                ),
                              ),
                              SizedBox(height: 35,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(" Height :", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),),
                                  SizedBox(width: 10,),
                                  Text(height,
                                    style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              SizedBox(height: 35,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(" Weight :", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),),
                                  SizedBox(width: 10,),
                                  Text(weight,
                                    style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              SizedBox(height: 35,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(" Nationality :", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),),
                                  SizedBox(width: 10,),
                                  Text(Nationality,
                                    style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              SizedBox(height: 35,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(" Salary :", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),),
                                  SizedBox(width: 10,),
                                  Text(salary,
                                    style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),),
                                ],
                              ),
                              SizedBox(height: 30,),
                              Align(child: Text("( Images )", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),)),
                              SizedBox(height: 20,),
                              Container(
                                height: 230,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    makeimages(imageone.toString()),
                                    makeimages(imagetwo.toString()),
                                    makeimages(imagethree.toString()),
                                    makeimages(imagefour.toString())
                                  ],
                                ),
                              ),
                              SizedBox(height: 100,)
                            ],
                          ),
                        ),
                      )
                    ]))
              ],
            ),
            Positioned.fill(
                bottom: 30,
                child: Container(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Align(
                          child: TextButton(
                              onPressed: (){},
                              child: Text("FOLLOW", style: TextStyle(color: KprimaryColor, fontWeight: FontWeight.bold, fontSize: 20),))
                      ),
                    ),
                  ),
                )
            )
          ],
        )
    );
  }

  Widget makeimages(image) {
    return(
        AspectRatio(aspectRatio: 5/6,
          child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image))
              ),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.favorite, color: Colors.white, size: 30,),
                  )
              )
          ),
        )
    );
  }
}