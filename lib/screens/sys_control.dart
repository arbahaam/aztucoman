import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'glassfill.dart';

class SysControl extends StatefulWidget {
  @override
  _SysControlState createState() => _SysControlState();
}

class _SysControlState extends State<SysControl> {
  GlassLoadingController _flareController;
  static const int totalGlass = 8;
  int currentGlass = 0;
  @override
  void initState() {
    _flareController = GlassLoadingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.red,
        title: Text(
          "System Control",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            child: FlareActor(
              "assets/images/fillWater.flr",
              controller: _flareController,
              artboard: "Artboard",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: InkWell(
              onTap: addWater,
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                    child: Text(
                  "Boost",
                  style: TextStyle(
                      letterSpacing: 1.2, color: Colors.black, fontSize: 20),
                )),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: InkWell(
              onTap: subWater,
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                    child: Text(
                  "Normal",
                  style: TextStyle(
                      letterSpacing: 1.2, color: Colors.black, fontSize: 20),
                )),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: InkWell(
              onTap: resetWater,
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                    child: Text(
                  "Reset",
                  style: TextStyle(
                      letterSpacing: 1.2, color: Colors.black, fontSize: 20),
                )),
              ),
            ),
          ),
          SwitchListTile(
            activeColor: Colors.lightGreen,
            value: true,
            title: Text(
              "on-off",
              style: TextStyle(color: Colors.white),
            ),
            onChanged: (val) {},
          ),
        ],
      ),
    );
  }

  void addWater() {
    setState(() {
      if (currentGlass <= totalGlass) {
        currentGlass = currentGlass + 5;
        double percentToadd = currentGlass / totalGlass;
        _flareController.updateWaterPercent(percentToadd);
      }
    });
  }

  void subWater() {
    setState(() {
      currentGlass = currentGlass + 3;
      double percentToadd = currentGlass / totalGlass;
      _flareController.updateWaterPercent(percentToadd);
    });
  }

  void resetWater() {
    setState(() {
      currentGlass = 0;
      _flareController.resetWater();
    });
  }
}
