import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam/SecScreen.dart';
import 'package:exam/ThirdSec.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'SecScreen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  static const String routeName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();

  int index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
        leading: Image(image: AssetImage("assets/images/logo.png")),
        title: Text(
          "Moody",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Badge(
            child: Icon(Icons.notifications),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello, Sara Rose"),
                    SizedBox(
                      height: 15,
                    ),
                    Text("How are you feeling today ?"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          child: Image(
                              width: 100,
                              height: 100, //width: double.infinity,
                              image:
                                  AssetImage("assets/images/Frame 10love.png")),
                        ),
                        CircleAvatar(
                          radius: 35,
                          child: Image(
                              width: 100,
                              height: 100, //width: double.infinity,
                              image: AssetImage("assets/images/Framecool.png")),
                        ),
                        CircleAvatar(
                          radius: 35,
                          child: Image(
                              width: 100,
                              height: 100, //width: double.infinity,
                              image:
                                  AssetImage("assets/images/Frame 8Happy.png")),

                        ),
                        CircleAvatar(
                          radius: 35,
                          child: Image(
                              width: 100,
                              height: 100,
                              image: AssetImage("assets/images/Frame 12sad.png")),
                        ),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Text("Love",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                      Text("Cool",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                      Text("Happy",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                      Text("Sad",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),

                    ],),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "Feature",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "See more",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff027A48)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color(0xff027A48),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    // Container(height: 200,
                    //     width: double.infinity,
                    //     child: Image(image: AssetImage("assets/images/FrameAlaa.png"))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: AssetImage("assets/images/FrameAlaa.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 180.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                axisDirection: Axis.horizontal,
                effect: WormEffect(
                    spacing: 8.0,
                    radius: 10.0,
                    dotWidth: 12.0,
                    dotHeight: 12.0,
                    paintStyle: PaintingStyle.stroke,
                    strokeWidth: 1.5,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.grey),
              ),
              Row(
                children: [
                  Text(
                    "Exercise",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "See more",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff027A48)),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xff027A48),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 80,
                child: SizedBox(
                  height: 200,
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 4 / 2,
                    crossAxisCount: 2,

          
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Color(0xFFF9F5FF),
                        child: Row(children: [
                          Image.asset("assets/images/FrameRelax.png"),
                          SizedBox(
                            width: 15,
                          ),
                          Text("Relaxation",style: TextStyle(fontSize: 11),),
                        ]),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Color(0xFFFDF2FA),
                        child: Row(children: [
                          Image.asset("assets/images/Framemeditation.png"),
                          SizedBox(
                            width: 15,
                          ),
                          Text("Meditation",style: TextStyle(fontSize: 11)),
                        ]),
                      ),
                      Container(
                        width: 326,
                        height: 156,
                        padding: const EdgeInsets.all(8),
                        color: Color(0xFFFFFAF5),
                        child: Row(children: [
                          Image.asset("assets/images/Framebeathing.png"),
                          SizedBox(
                            width: 15,
                          ),
                          Text("Beathing"),
                        ]),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: Color(0xFFF0F9FF),
                        child: Row(children: [
                          Image.asset("assets/images/Frameyoga.png"),
                          SizedBox(
                            width: 15,
                          ),
                          Text("Yoga"),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
          
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xff027A48),
          unselectedItemColor: Colors.grey,
          iconSize: 30,
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/home-05home.png")),
                label: ""),
            BottomNavigationBarItem(
                icon: InkWell(onTap: () {
                  print('555555');
                  Navigator.pushNamed(context, SecScreen.routeName);
                },
                    child: ImageIcon(AssetImage("assets/images/grid-01group.png"))),
                label: ""),
            BottomNavigationBarItem(
                icon: InkWell(onTap: () {
                  print('555555');
                  Navigator.pushNamed(context, ThirdSec.routeName);
                },
                    child: ImageIcon(AssetImage("assets/images/calendarlist.png"))),
                label: ""),

            BottomNavigationBarItem(
                icon: InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(SecScreen.routeName);

                    },
                    child: ImageIcon(AssetImage("assets/images/user-03profile.png"))),
                label: ""),



          ]),
    );
  }
}
