import 'package:flutter/material.dart';

class Horizontal_ListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          InkWell(
            child: Horizontal_ListView_Item(),
            onTap: () {
              print('On Tap');
            },
          ),
          Padding(padding: const EdgeInsets.all(5.0)),
          InkWell(
            child: Horizontal_ListView_Item(),
            onTap: () {
              print('On Tap');
            },
          ),
          Padding(padding: const EdgeInsets.all(5.0)),
          InkWell(
            child: Horizontal_ListView_Item(),
            onTap: () {
              print('On Tap');
            },
          ),
        ],
      ),
    );
  }
}

class Horizontal_ListView_Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(10.0),
      width: 300,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('data', style: Theme.of(context).textTheme.headline1),
            Padding(padding: const EdgeInsets.all(1.0)),
            Text('data', style: Theme.of(context).textTheme.headline2),
          ],
        ),
      ),
    );
  }
}
