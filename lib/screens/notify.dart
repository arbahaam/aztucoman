import 'package:flutter/material.dart';

class Notify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 50),
          Text(
            "You Have 2 new notification",
            style: TextStyle(
              color: Colors.red,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 5),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.red,
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 5.0,
            ),
            child: ListTile(
              leading: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              title: Text(
                "Tank is full",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
          ),
          SizedBox(height: 5),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.red,
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 5.0,
            ),
            child: ListTile(
              leading: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              title: Text(
                "Sytem Boosted",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
