import 'package:flutter/material.dart';
// import 'package:progress_dialog/progress_dialog.dart';
import 'package:url_launcher/url_launcher.dart';
import 'projects.dart';

class secondClass extends StatelessWidget {

  void prabandh (work) async{
    if (await canLaunch(work)){
      await launch(work);
    }
    else{
      print('Whoops!');
    }
  }

  List <project> projectList =
  [
    project(
      name: 'Virtual classroom using client-server architecture',
      desc: 'This project is a client-server application which can be utilised for educational purposes in this pandemic situation for group chat and privileged file sharing.',
      pic: 'jinish/meet_1.0.png',
      link: 'https://github.com/theritwikkundu/Client-Server-Virtual-Classroom',
    ),
    project(
      name: 'Recognition of handwritten digits',
      desc: 'This project is built around a web application for interactive input of handwritten digits that will be recognised by our ML model trained on the MNIST dataset.',
      pic: 'jinish/mnist_1.0.png',
      link: 'https://github.com/theritwikkundu/Handwritten-Digit-Recognition',
    ),
    project(
      name: 'Comprehensive ATM Management',
      desc: 'This project simulates the regular functionalities of an ATM along with features of remote login by admin and customer, highlighting the role of database management.',
      pic: 'jinish/atm_1.0.png',
      link: 'https://github.com/theritwikkundu/Comprehensive-ATM-Management',
    ),
    // project(
    //   name: 'First proj',
    //   desc: 'Lorem ipsum ilibili phoo. Niligili shirinubu gilichiru biduro',
    //   pic: 'jinish/testPic1.png',
    // ),
    // project(
    //   name: 'F',
    //   desc: 'L L L L L L L L L L L L L L L L L L L L L L L L L L L L L L L L L L L L',
    //   pic: 'jinish/testPic1.png',
    // ),
  ];

  Widget projCard(each){
    return Column(
      children: [
        Card(
          color: Colors.white,
          shadowColor: Colors.black,
          elevation: 24,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
          ),
          // margin: EdgeInsets.fromLTRB(12, 8, 12, 8),
          child: Container(
            width: 360,
            padding: EdgeInsets.fromLTRB(22, 16, 22, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        each.pic,
                        width: 316,
                      ),
                      SizedBox(height: 12,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LimitedBox(
                            maxWidth: 316,
                            child: Text(
                              each.name,
                              style: TextStyle(
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      LimitedBox(
                        maxWidth: 316,
                        child: Text(
                          each.desc,
                          style: TextStyle(
                            color: Colors.grey[800],
                            // fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(height: 8,),
                      FlatButton(
                        onPressed: (){
                          prabandh(each.link);
                        },
                        child: Text(
                          'View project'
                        ),
                        color: Color(0x423dbae2),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      )
                    ]
                  ),
                ),
                // Image.asset(
                //   each.pic,
                //   height: 64,
                //   width: 64,
                // ),
              ],
            ),
          ),
        ),
        SizedBox(height: 8,),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 24, 10, 10),
        child: Column(
          children: [
            Text(
              'Projects                             ',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            // Text(String.fromCharCode(0x2022), style: TextStyle(fontSize: 42),),
            SizedBox(height: 12,),
            Column(
              children: projectList.map((e) => projCard(e)).toList(),
            ),
            FlatButton(
                onPressed: (){
                  prabandh('https://github.com/theritwikkundu');
                },
                child: Text(
                  'More projects',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                    color: Colors.grey[700],
                    // color: Colors.white,
                  ),
                ),
              color: Color(0x00ffffff),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            ),
            SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }
}
