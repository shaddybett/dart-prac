import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Carpe Diem',
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'PlayfairDisplay',
              )),
          centerTitle: true,
          backgroundColor: Colors.blue[600],
        ),
        body: Center(
          child: IconButton(
            onPressed: () {print('Icon clicked');},
            icon: Icon(Icons.alternate_email)
          )
          )
        );
  }
}

