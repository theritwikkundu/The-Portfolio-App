import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'projects.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'pre/my_flutter_app_icons.dart' as yay;

class firstClass extends StatelessWidget {

  void prabandh (work) async{
    if (await canLaunch(work)){
      await launch(work);
    }
    else{
      print('Whoops!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.fromLTRB(36, 0, 36, 0),
      alignment: Alignment.center,
      // color: Colors.grey[850],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 2, width: 5,),
          LimitedBox(//height: 475,
            maxHeight: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Hi, I am',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 4,),
                  Text('Ritwik Kundu',
                    style: TextStyle(
                      fontFamily: 'PlayfairDisplay-VariableFont_wght',
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 32,),
                  Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffffffff),
                          // backgroundImage: AssetImage("jinish/DRB_RK.jpg"),
                          radius: 125,  //100
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage("jinish/RK_BW.png"),
                          radius: 120,  //88
                        ),
                      ]
                  ),
                  SizedBox(height: 36,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(8, 4, 4, 4),
                        width: 80,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0x69ffffff),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(42),
                            bottomLeft: Radius.circular(42),
                          ),
                        ),
                        child: Text("I'm into",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,),
                        ),
                      ),
                      Transform.rotate(
                        // angle: -3.14/36,
                        angle: 0,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(4, 4, 8, 4),
                          width: 124,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(42),
                              bottomRight: Radius.circular(42),
                            ),
                          ),
                          // child: Text("electronics".toUpperCase(),
                          //   style: TextStyle(
                          //       fontSize: 16,
                          //       color: Color(0xff343247),
                          //       // backgroundColor: Color(0xffffffff),
                          //   ),
                          // ),
                          child: FadeAnimatedTextKit(
                            repeatForever: true,
                            duration: Duration(milliseconds: 1200),
                            // pause: Duration(milliseconds: 1200),
                            text: ["electronics".toUpperCase(), 'DESIGN', 'CODING'],
                            textStyle: TextStyle(
                              fontSize: 16,
                              // fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                              // backgroundColor: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: () {
                      // prabandh('mailto:theritwikkundu@gmail.com');
                      prabandh('https://goo.gl/maps/cFcmqDXr9dWxG73N9');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on, color: Colors.grey[700],),
                        SizedBox(width: 5,),
                        Text('Burdwan, West Bengal  ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Colors.grey[700],),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 32,),
                  LimitedBox(
                    maxWidth: 300,
                    child: Text(
                      // 'Lorem ipsum ilibili phoo. Niligili shirinubu gilichiru biduro',
                      // 'Computer science undergrad, design enthusiast and hopefully a future TEChie',
                      // 'Computer science undergrad and hopefully a future TEChie',
                      'Computer science undergrad | Design enthusiast | Beginner in app dev\n& hopefully a future TEChie',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.fromLTRB(5, 5, 5, 24),
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.alternate_email, color: Colors.grey[800],),
                  onPressed: () {
                    // prabandh('mailto:theritwikkundu@gmail.com');
                    prabandh('mailto:theritwikkundu@gmail.com');
                  },
                ),
                IconButton(
                  // icon: Icon(Icons.title),
                  icon: const Icon(yay.MyFlutterApp.twitter),
                  color: Colors.grey[800],
                  onPressed: () {
                    // prabandh('mailto:theritwikkundu@gmail.com');
                    prabandh('https://twitter.com/theritwikkundu');
                  },
                ),
                IconButton(
                  // icon: Icon(Icons.thumb_up, color: Colors.grey[800],),
                  icon: const Icon(yay.MyFlutterApp.facebook),
                  color: Colors.grey[800],
                  onPressed: () {
                    // prabandh('mailto:theritwikkundu@gmail.com');
                    prabandh('https://www.facebook.com/kundu.ritwik21');
                  },
                ),
                IconButton(
                  // icon: Icon(Icons.camera_alt, color: Colors.grey[800],),
                  icon: const Icon(yay.MyFlutterApp.instagram),
                  color: Colors.grey[800],
                  onPressed: () {
                    // prabandh('mailto:theritwikkundu@gmail.com');
                    prabandh('https://www.instagram.com/theritwikkundu/?hl=en');
                  },
                ),
                IconButton(
                  // icon: Icon(Icons.work, color: Colors.grey[800],),
                  icon: const Icon(yay.MyFlutterApp.linkedin_in),
                  color: Colors.grey[800],
                  onPressed: () {
                    // prabandh('mailto:theritwikkundu@gmail.com');
                    prabandh('https://www.linkedin.com/in/kundu-ritwik/');
                  },
                ),
                IconButton(
                  // icon: Icon(Icons.code, color: Colors.grey[800],),
                  icon: const Icon(yay.MyFlutterApp.github),
                  color: Colors.grey[800],
                  onPressed: () {
                    // prabandh('mailto:theritwikkundu@gmail.com');
                    prabandh('https://github.com/theritwikkundu');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
