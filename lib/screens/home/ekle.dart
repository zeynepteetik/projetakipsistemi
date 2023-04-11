import 'package:flutter/material.dart';

class EkleScreen extends StatefulWidget {
  EkleScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _EkleScreenState createState() => _EkleScreenState();
}

class _EkleScreenState extends State<EkleScreen> {
  final _tasks1 = <String>[];
  final _tasks2 = <String>[];
  final _tasks3 = <String>[];

  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();
  final _textController3 = TextEditingController();

  @override
  void dispose() {
    _textController1.dispose();
    _textController2.dispose();
    _textController3.dispose();
    super.dispose();
  }

  void _addTasks() {
    setState(() {
      _tasks1.add(_textController1.text);
      _tasks2.add(_textController2.text);
      _tasks3.add(_textController3.text);
      _textController1.clear();
      _textController2.clear();
      _textController3.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: _textController1,
            decoration: InputDecoration(
              hintText: 'Proje Adı',
            ),
            onSubmitted: (_) => _textController2
                .clear(), // clear the second text field when submitting the first
          ),
          TextField(
            controller: _textController2,
            decoration: InputDecoration(
              hintText: 'Başlangıç Tarihi',
            ),
            onSubmitted: (_) => _textController3
                .clear(), // clear the third text field when submitting the second
          ),
          TextField(
            controller: _textController3,
            decoration: InputDecoration(
              hintText: 'Bitiş Tarihi',
            ),
            onSubmitted: (_) =>
                _addTasks(), // add all the tasks when submitting the third
          ),
          ElevatedButton(
            onPressed: _addTasks, // add all the tasks when the button is pressed
            child: Text('Kaydet'),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Text(_tasks1.join('/')), // display all the tasks with / separator
                Text(_tasks2.join('/')),
                Text(_tasks3.join('/')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
