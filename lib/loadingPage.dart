import 'package:flutter/material.dart';

class dhuktei extends StatefulWidget {
  @override
  _dhukteiState createState() => _dhukteiState();
}

class _dhukteiState extends State<dhuktei> {

  String redirectTrix() {
    Future.delayed(Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, '/dashboard');
    });
    return 'The Portfolio App';
  }

  Widget loadIcon () {
    return Opacity(
      opacity: 0.930,
      child: Image.asset(
        'jinish/RK_logo_t.1.png',
        height: 180,
        width: 180,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(32, 240, 32, 96),
        alignment: Alignment.center,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Image.asset(
            //   'assetset/images/logo.png',
            //   height: 200,
            //   width: 200,
            // ),
            // Text(
            //   'RK',
            //   style: TextStyle(
            //     fontSize: 120,
            //     color: Colors.white60,
            //     letterSpacing: 2,
            //   ),
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                loadIcon(),
                // SizedBox(height: 10,),
                // Text(
                //   'Ritwik Kundu',
                //   style: TextStyle(
                //     fontSize: 20,
                //     color: Colors.white38,
                //     letterSpacing: 2,
                //   ),
                // )
              ],
            ),
            Text(
              redirectTrix(),
              style: TextStyle(
                fontSize: 20,
                color: Colors.white38,
                letterSpacing: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
