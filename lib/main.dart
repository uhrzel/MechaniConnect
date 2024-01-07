import 'package:flutter/material.dart';
import 'models/mechanic/pages/main.dart';
import 'models/users/pages/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false, // Set this to false
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/user': (context) => UserScreen(),
        '/mechanic': (context) => MechanicScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MechaniConnect App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.gif', // Replace with your image asset
              height: 300,
              width: 300,
            ),
            SizedBox(height: 20),
            Text(
              'Are you a user or mechanic?',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/user');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // Set button color
                    textStyle: TextStyle(fontSize: 16), // Set button text style
                  ),
                  child: Text('User'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/mechanic');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // Set button color
                    textStyle: TextStyle(fontSize: 16), // Set button text style
                  ),
                  child: Text('Mechanic'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
