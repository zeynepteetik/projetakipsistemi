import 'dart:math';
import 'package:flutter/material.dart';

List<String> projectNames = [
  'Proje 1',
  'Proje 2',
  'Proje 3',
  'Proje 4',
  'Proje 5',
  'Proje 6',
  'Proje 7',
  'Proje 8',
  'Proje 9',
  'Proje 10',
];
String getRandomProjectName() {
  final random = Random();
  final index = random.nextInt(projectNames.length);
  return projectNames[index];
}
class ProjectListPage extends StatefulWidget {
  @override
  _ProjectListPageState createState() => _ProjectListPageState();
}

class _ProjectListPageState extends State<ProjectListPage> {
  String currentProjectName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projeler'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Şu anki proje:',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              currentProjectName,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentProjectName = getRandomProjectName();
                });
              },
              child: Text('Rastgele proje seç'),
            ),
          ],
        ),
      ),
    );
  }
}