import 'package:flutter/material.dart';

class SysSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "System Settings".toUpperCase(),
            style: TextStyle(
              color: Colors.grey.shade800,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 0,
            ),
            child: Column(
              children: <Widget>[
                SwitchListTile(
                  activeColor: Colors.lightGreen,
                  value: true,
                  title: Text("Auto Mode"),
                  onChanged: (val) {},
                ),
                _buildDivider(),
                SwitchListTile(
                  activeColor: Colors.lightGreen,
                  value: true,
                  title: Text("Water Pump 1"),
                  onChanged: null,
                ),
                _buildDivider(),
                SwitchListTile(
                  activeColor: Colors.lightGreen,
                  value: true,
                  title: Text("Water Pump 2"),
                  onChanged: null,
                ),
                _buildDivider(),
                SwitchListTile(
                  activeColor: Colors.lightGreen,
                  value: true,
                  title: Text("Antena 1"),
                  onChanged: null,
                ),
                _buildDivider(),
                SwitchListTile(
                  activeColor: Colors.lightGreen,
                  value: true,
                  title: Text("Antena 2"),
                  onChanged: null,
                ),
                _buildDivider(),
                SwitchListTile(
                  activeColor: Colors.lightGreen,
                  value: true,
                  title: Text("Valve"),
                  onChanged: null,
                ),
                _buildDivider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Container _buildDivider() {
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 8.0,
    ),
    width: double.infinity,
    height: 1.0,
    color: Colors.grey.shade300,
  );
}
