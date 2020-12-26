import 'package:flutter/material.dart';
import 'loadingPage.dart';
import 'second.dart';
import 'first.dart';
import 'third.dart';
import 'package:url_launcher/url_launcher.dart';
import 'pre/my_flutter_app_icons.dart' as yay;

void main() {
  runApp(MaterialApp(
    initialRoute: 'loading',
    routes: {
      'loading' : (context) => dhuktei(),
      '/dashboard': (context) => dashboard(),
      // '/2': (context) => formPage(),
    },
  ));
}

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {

  // String loginDtl="";



  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0), // here the desired height
            child: AppBar(
            //appBar: AppBar(
              centerTitle: true,
              // toolbarHeight: 240,
              title: Text(
                  'P O R T F O L I O',
                style: TextStyle(
                  fontFamily: 'Lora-VariableFont_wght',
                  fontSize: 19,
                  color: Colors.grey[800],
                ),
              ),
              backgroundColor: Colors.white,
              // titleSpacing: 10,
              bottom: TabBar(
                  indicatorColor: Colors.grey[850],
                  // indicatorWeight: 8,
                  tabs: [
                    Tab(icon: Icon(Icons.info, color: Colors.grey[800],),),
                    // Tab(icon: Icon(yay.MyFlutterApp.graduation_cap, color: Colors.grey[800],),),
                    Tab(icon: Icon(Icons.perm_identity, color: Colors.grey[800],),),
                    Tab(icon: Icon(Icons.stars, color: Colors.grey[800],),),
                  ]
              ),
            ),
          ),
          // drawer: Drawer(
          //   child: Container(
          //     padding: EdgeInsets.fromLTRB(20, 60, 20, 12),
          //     child: Column(
          //       children: [
          //         InkWell(
          //           child: Text(
          //               'Home',
          //           ),
          //         ),
          //         SizedBox(height: 10,),
          //         InkWell(
          //           onTap: (){},
          //           child: Text(
          //               'Projects'
          //           ),
          //         ),
          //         SizedBox(height: 10,),
          //       ],
          //     ),
          //   ),
          // ),
          body: Container(
            decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.bottomCenter,
                colors: [
                  // Colors.blue[100],
                  // Colors.blueGrey[800],
                  // Colors.grey[900],
                  // Colors.grey[900],
                  // Color(0xff343247),
                  // Color(0xff343247),
                  // Color(0xff3aa8db),
                  Color(0xff3dbae2),
                  Color(0xff43f9fd),
                ]),
          ),
            child: TabBarView(
              children: [
                thirdClass(),
                firstClass(),
                secondClass(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
