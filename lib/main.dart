import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hacker App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: FacebookInfo(),
    );
  }
}

class FacebookInfo extends StatefulWidget {
  const FacebookInfo({Key? key}) : super(key: key);

  @override
  State<FacebookInfo> createState() => _FacebookInfoState();
}

class _FacebookInfoState extends State<FacebookInfo> {
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook Profile'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/person.jpeg'),
            ),
            title: Text(
              'Mohamed Ahmed',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            subtitle: Text('Actor'),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  _isLiked = !_isLiked;
                });
              },
              icon: Icon(
                _isLiked ? Icons.thumb_up : Icons.thumb_up_alt_outlined,
                color: _isLiked ? Colors.blue : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
