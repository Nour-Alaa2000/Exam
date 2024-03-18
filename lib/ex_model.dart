import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Exarcises extends StatelessWidget {
  Exarcises({required this.ex,required this.Days, super.key,required this.image});

  String Days;
  String ex;
  AssetImage image;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                          height: 35,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              Days,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          )),
                    ),
                    Text(ex,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),

                    Text("Improve mental focus."),
                   Row(
                     children: [
                       Icon(Icons.watch_later_outlined),
                       SizedBox(width: 10,),
                       Text("30 mins",style: TextStyle(
                         fontSize: 12,fontWeight: FontWeight.w400
                       ),),

                     ],
                   ),
                 
                  ],
                ),

              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(width: 120,
                        height: 120,
                        child: Image(image:image))
                  ],
                ),
              )

            ],
          )
        ],
      ),
    );
  }
}
