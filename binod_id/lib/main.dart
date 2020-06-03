import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int btechSkillLevel = 4;
  String level = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Binod ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (btechSkillLevel > 20) btechSkillLevel = 0;
            btechSkillLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/user.jpg'),
                radius: 50.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'NAME :',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Binod Mehta',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'CURRENT SKILL LEVEL :',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Basic($btechSkillLevel)',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.blueGrey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'binod@baryonstech.com',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 17.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.open_in_new,
                  color: Colors.blueGrey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'www.baryonstech.com.np',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 17.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone_in_talk,
                  color: Colors.blueGrey,
                ),
                SizedBox(width: 10.0),
                Text(
                  '+977-9851237773',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 17.0,
                    letterSpacing: 2.5,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
