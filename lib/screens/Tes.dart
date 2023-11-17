import 'package:flutter/material.dart';

class AuthScreenTes extends StatefulWidget {
  const AuthScreenTes({super.key});

  @override
  State<AuthScreenTes> createState() {
    return _AuthScreenStateTes();
  }
}

class _AuthScreenStateTes extends State<AuthScreenTes> {
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'LINE',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
           Text("Halo dunia"),
            SizedBox(height: 20),
           
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Log in'),
              onPressed: () {
                // Handle login logic
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[300],
                onPrimary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Divider(height: 40, thickness: 2),
            TextButton(
              child: Text(
                'NEW QR code login',
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: () {
                // Handle QR code login
              },
            ),
            TextButton(
              child: Text('Forgot your email or password?'),
              onPressed: () {
                // Handle forgot email/password
              },
            ),
          ],
        ),
      ),
    );
  }
}
