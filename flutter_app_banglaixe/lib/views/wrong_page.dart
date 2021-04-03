import 'package:flutter/material.dart';
class Wrong_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrong Page'),
      ),
      body: Container(
          child: Center(
            child:  Text('Wrong Page'),
          )
      ),
    );
  }
}
