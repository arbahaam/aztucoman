import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  static const routeName = '/About2';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("ABOUT US"),
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            width: width,
            height: height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('ArduComan',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w400)),
                  Container(
                    width: 230,
                    height: 2,
                    color: Colors.orangeAccent,
                  ),
                  SizedBox(height: 30),
                  Text('Version',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  Text('1.0.1.1',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w400)),
                  SizedBox(height: 30),
                  Text('About Our Team',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  Text('Created 3 March 2020',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w400)),
                  SizedBox(height: 30),
                  Text(
                      'Rafael- Software Developer \nAdil-Water Treatment Analyst \nShamil- IT Specialist \nIbrahim- Mobile/Backend developer \nAyxan-Hardware Developer'
                          .toUpperCase(),
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w400)),
                  SizedBox(height: 30),
                  Text('For donation and Contact ',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w400)),
                  Text('aztucoman@gmail.com',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
