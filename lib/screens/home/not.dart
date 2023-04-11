import 'package:flutter/material.dart';

class NotAlSayfasi extends StatefulWidget {
  @override
  _NotAlSayfasiState createState() => _NotAlSayfasiState();
}

class _NotAlSayfasiState extends State<NotAlSayfasi> {
  final TextEditingController _notController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  String savedNote = '';

  @override
  void initState() {
    super.initState();
    _focusNode.requestFocus();
  }

  void _saveNote() {
    setState(() {
      savedNote = _notController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Not Al'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Not:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: _notController,
              focusNode: _focusNode,
              maxLines: 10,
              decoration: InputDecoration(
                hintText: 'Buraya notunuzu yazın',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Kaydet'),
              onPressed: _saveNote,
            ),
            SizedBox(height: 16.0),
            Text(
              'Kaydedilen Not:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              savedNote,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

