import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecScreen extends StatefulWidget {
  SecScreen({super.key});

  static const String routeName = "SecScreen";
  static const List<Tab> myTabs = <Tab>[
    Tab(text: "ALL Type"),
    Tab(text: "Full Body"),
    Tab(text: "Upper"),
    Tab(text: "Lower"),
  ];

  @override
  State<SecScreen> createState() => _SecScreenState();
}

class _SecScreenState extends State<SecScreen> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: DefaultTabController(length: SecScreen.myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/person.png"),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, Jade",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
                Text("Ready to workout?"),
              ],
            ),
            actions: [
              Badge(
                child: Icon(Icons.notifications),
              )
            ],
          ),
           body: Column(
             children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                   SizedBox(
                     height: 5,
                   ),
                   Padding(
                     padding: const EdgeInsets.all(2),
                     child: Container(
                         height: 100,
                         width: 250,
                         child: Image(image: AssetImage("assets/images/Details.png"))),
                   ),
                   Text(
                     "Workout Programs",
                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                   ),


                 ],
               ),
               TabBar(
                 tabs: SecScreen.myTabs,
               ),
               Expanded(child:
               ListView(children: [
                 SizedBox(
                   height: 10,
                 ),
                 Container(height: 150,
                   decoration: BoxDecoration(
                       image: DecorationImage(
                           image:
                           AssetImage("assets/images/Plankyogga2 (1).png"))),
                 ),
                 SizedBox(
                   height: 10,
                 ),
                 Container(height: 150,
                   decoration: BoxDecoration(
                       image: DecorationImage(
                           image:
                           AssetImage("assets/images/Plankyogga2.png"))),
                 ),

               ],



               )),



             ],
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
                    icon: ImageIcon(AssetImage("assets/images/navigation-pointer-01navigation.png")),
                    label: ""),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/bar-chart-07analysis.png")),
                    label: ""),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/user-03profile.png")),
                    label: ""),



              ]),
      ),
      ));
  }
}
