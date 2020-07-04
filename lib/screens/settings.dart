import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10.0),
            Card(
              elevation: 0.5,
              margin: const EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 0,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage("assets/images/index.jpg")),
                        ),
                        Text("ArduComan"),
                      ],
                    ),
                  ),
                  _buildDivider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text('Show Profile'),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              "General Settings".toUpperCase(),
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
                  ListTile(
                    leading: Icon(
                      Icons.email,
                      // Entypo.email,
                      color: Colors.lightGreen,
                    ),
                    title: Text("Change E-Mail"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      //open change password
                    },
                  ),
                  _buildDivider(),
                  ListTile(
                    leading: Icon(
                      Icons.phone,
                      // AntDesign.phone,
                      color: Colors.lightGreen,
                    ),
                    title: Text("Change Phone Number"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      //open change location
                    },
                  ),
                  _buildDivider(),
                  ListTile(
                    leading: Icon(
                      Icons.lock_outline,
                      color: Colors.lightGreen,
                    ),
                    title: Text("Change Password"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      //open change password
                    },
                  ),
                  _buildDivider(),
                  ListTile(
                    leading: Icon(
                      Icons.public,
                      // MaterialCommunityIcons.earth,
                      color: Colors.lightGreen,
                    ),
                    title: Text("Change Language"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      //open change language
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              "Notification Settings".toUpperCase(),
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
                    title: Text("System notification"),
                    onChanged: (val) {},
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    activeColor: Colors.lightGreen,
                    value: true,
                    title: Text("System Problems"),
                    onChanged: (val) {},
                  ),
                  _buildDivider(),
                  SwitchListTile(
                    activeColor: Colors.lightGreen,
                    value: true,
                    title: Text("Tank Problems"),
                    onChanged: (val) {},
                  ),
                  _buildDivider(),
                ],
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 0,
              ),
              child: ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Logout"),
                onTap: () {},
              ),
            ),
            const SizedBox(height: 60.0),
          ],
        ),
      ),
    );
  }

  /// ----------------------------------------------------------
  /// _buildDivider helper method for build divider widget
  /// ----------------------------------------------------------
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
}
