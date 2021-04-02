import 'package:flutter/material.dart';

class IconButtonHome extends StatelessWidget {
  final Icon icon_name;
  final Color color;
  final String button_name;

  const IconButtonHome({Key key, this.icon_name, this.color, this.button_name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child: Column(
        children: <Widget>[
          ClipOval(
            child: Material(
              color: this.color,
              // button color
              child: InkWell(
                splashColor: Colors.red, // inkwell color

                child: SizedBox(width: 56, height: 56, child: this.icon_name),

                onTap: () {},
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.all(5.0)),
          Text(this.button_name)
        ]
      ),
    );
  }
}
