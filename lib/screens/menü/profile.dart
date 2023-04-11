import 'package:flutter/material.dart';

import '../giriş/login_screen.dart';

class User {
  final String name;
  final String surname;
  final String address;
  final String email;
  final String phone;

  User({
    required this.name,
    required this.surname,
    required this.address,
    required this.email,
    required this.phone,
  });
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  User user = User(
    name: 'Zeynep',
    surname: 'Tetik',
    address: 'Keçiören Ankara',
    email: '203311108@selcuk.edu.tr',
    phone: '505 978 8839',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/vesikalık.JPG'),
            ),
            SizedBox(height: 100),
            Text(
              '${user.name} ${user.surname}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              user.address,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              user.email,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              user.phone,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context){
                  return LoginScreen();
                }));
              },
              child: Text('Çıkış Yap'),
            ),
          ],
        ),
      ),
    );
  }
}

