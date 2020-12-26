import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'projects.dart';

class thirdClass extends StatelessWidget {

  TextStyle heading = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Color(0x96000000),
  );

  TextStyle boding = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w300,
    color: Colors.grey[800],
  );

  TextStyle bodingBold = TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w400,
    color: Colors.grey[700],
  );

  TextStyle bodingB = TextStyle(
    fontSize: 20,
    // fontWeight: FontWeight.bold,
    fontWeight: FontWeight.w300,
    color: Colors.grey[800],
  );

  Widget gapLine =
  Container(
    child: Container(
      padding: EdgeInsets.fromLTRB(0, 14, 0, 20),
      // color: Color(0x69000000),
      child: Text(
        '___________________________________________',
        style: TextStyle(
          fontSize: 16,
          color: Color(0x42000000),
          fontWeight: FontWeight.bold,
        ),
      ),
      // child: SizedBox(height: 0.1, width: 300,),
    ),
  );
  Widget titleGap = SizedBox(height: 16,);

  @override
  Widget build(BuildContext context) {
    String dot = String.fromCharCode(0x2022);
    return Container(
      color: Color(0xd0ffffff),
      child: SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10, 24, 10, 10),
        child: Column(
          children: [
            // SizedBox(
            //   width: 360,
            //   child: Text(
            //     'About',
            //     style: heading,
            //   ),
            // ),
            // titleGap,
            // SizedBox(
            //   width: 360,
            //   child: Text(
            //     'About',
            //     style: boding,
            //   ),
            // ),
            // gapLine,
            SizedBox(
              width: 360,
              child: Text(
                'Experience',
                style: heading,
              ),
            ),
            titleGap,
            SizedBox(
              width: 360,
              child: Text(
                'Vellore Institute of Technology',
                style: bodingBold,
              ),
            ),
            SizedBox(
              width: 360,
              child: Text(
                '\t$dot Sophomore (2020 - Present)\n\t$dot Freshman (2019 - 2020)',
                style: boding,
              ),
            ),
            SizedBox(
              width: 360,
              child: Text(
                '\nEast West Model School',
                style: bodingBold,
              ),
            ),
            SizedBox(
              width: 360,
              child: Text(
                '\t$dot Member of Debate Society\n\t$dot Emcee at School Annual Function\n\t$dot Member of Disciplinary Committee',
                style: boding,
              ),
            ),
            gapLine,
            SizedBox(
              width: 360,
              child: Text(
                'Education',
                style: heading,
              ),
            ),
            titleGap,
            SizedBox(
              width: 360,
              child: Text(
                'Vellore Institute of Technology',
                style: bodingBold,
              ),
            ),
            SizedBox(
              width: 360,
              child: Text(
                '\t$dot Current CGPA  -  9.15',
                style: boding,
              ),
            ),
            SizedBox(
              width: 360,
              child: Text(
                '\nEast West Model School',
                style: bodingBold,
              ),
            ),
            SizedBox(
              width: 360,
              child: Text(
                '\t$dot ISC    -  95.25%\n\t$dot ICSE  -  94.40%',
                style: boding,
              ),
            ),
            gapLine,
            SizedBox(
              width: 360,
              child: Text(
                'Tools & Tech',
                style: heading,
              ),
            ),
            titleGap,
            SizedBox(
              width: 360,
              child: Text(
                'Java | C | Python | Tkinter | C++ | MySQL | Oracle SQL | Dart | Flutter | Autodesk Sketchbook | Adobe Illustrator',
                style: bodingB,
              ),
            ),
            gapLine,
            SizedBox(
              width: 360,
              child: Text(
                'Interpersonal skills',
                style: heading,
              ),
            ),
            titleGap,
            SizedBox(
              width: 360,
              child: Text(
                'Problem solving | Public speaking | Team leadership | Team management',
                style: bodingB,
              ),
            ),
            gapLine,
            SizedBox(
              width: 360,
              child: Text(
                'Other skills & interests',
                style: heading,
              ),
            ),
            titleGap,
            SizedBox(
              width: 360,
              child: Text(
                'Digital Art | Painting | Electronics | Photography | Design',
                style: bodingB,
              ),
            ),
            SizedBox(height: 24,),
          ],
        ),
      ),
    );
  }
}
