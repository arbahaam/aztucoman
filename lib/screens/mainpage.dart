import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white38,
            child: Column(
              children: <Widget>[
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "ArduComan",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 35,
                              // fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/index.jpg")),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 100,
                  width: double.infinity,
                  // color: Colors.blueAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/icons/sun.png')),
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 30),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Temperature",
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                  Text(
                                    "36 C",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                      fontSize: 35,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          // System control
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/syscontrol");
                              print("object");
                            },
                            child: Container(
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Colors.red,
                              ),
                              child: Center(
                                child: Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/icons/process.png'))),
                                      ),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 140),
                                          child: Container(
                                            height: 60,
                                            width: 180,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                              ),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    "System Control",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Water level: 60%",
                                                    style: TextStyle(
                                                      color: Colors.white60,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //
                          // System Control end
                          //
                          SizedBox(height: 10),
                          //Water Control
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/watercontrol');
                              print("object");
                            },
                            child: Container(
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Colors.red,
                              ),
                              child: Center(
                                child: Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 40,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/icons/water.png'))),
                                      ),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 140),
                                          child: Container(
                                            height: 60,
                                            width: 180,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                              ),
                                              // color: Colors.red,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    "System Result",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    "6T of water was cleaned",
                                                    style: TextStyle(
                                                      color: Colors.white60,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Water Control End
                        ],
                      ),
                      SizedBox(width: 10),
                      // Additional Settings
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              print("settings");
                              Navigator.pushNamed(context, "/settingsSys");
                            },
                            child: Container(
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Colors.red,
                              ),
                              child: Center(
                                child: Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 40,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/icons/adjust.png'))),
                                      ),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 140),
                                          child: Container(
                                            height: 60,
                                            width: 180,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                              ),
                                              // color: Colors.red,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    "Settings",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    "6 devices connected",
                                                    style: TextStyle(
                                                      color: Colors.white60,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Addition Settings End
                          SizedBox(height: 10),
                          // Another settings
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/about');
                            },
                            child: Container(
                              height: 200,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Colors.red,
                              ),
                              child: Center(
                                child: Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/icons/team.png'))),
                                      ),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 140),
                                          child: Container(
                                            height: 60,
                                            width: 180,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                              ),
                                              // color: Colors.red,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    "About Us",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    "ArduComan",
                                                    style: TextStyle(
                                                      color: Colors.white60,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Another settings end
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
