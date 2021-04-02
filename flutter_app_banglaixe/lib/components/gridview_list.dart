import 'package:flutter/material.dart';

import 'icon_button_home.dart';

class GridViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: GridView.count(
        scrollDirection: Axis.vertical,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        crossAxisCount: 4,
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          IconButtonHome(
            icon_name: Icon(Icons.my_library_books_outlined, color: Colors.white,),
            color: Colors.blue,
            button_name: 'Thi Thử',
          ),
          IconButtonHome(
            icon_name: Icon(Icons.bookmark_border, color: Colors.white),
            color: Colors.green,
            button_name: 'Lưu',
          ),
          IconButtonHome(
            icon_name: Icon(Icons.cancel_outlined, color: Colors.white),
            color: Colors.red,
            button_name: 'Câu Sai',
          ),
          IconButtonHome(
            icon_name: Icon(Icons.menu_book_outlined, color: Colors.white),
            color: Colors.yellow,
            button_name: 'Hay Sai',
          ),
          IconButtonHome(
            icon_name: Icon(Icons.directions_car, color: Colors.white),
            color: Colors.blue,
            button_name: 'Sa Hình',
          ),
          IconButtonHome(
            icon_name: Icon(Icons.lightbulb_outline, color: Colors.white),
            color: Colors.green,
            button_name: 'Mẹo',
          ),
          IconButtonHome(
            icon_name: Icon(Icons.not_interested_outlined, color: Colors.white),
            color: Colors.red,
            button_name: 'Trợ Giúp',
          ),
          IconButtonHome(
            icon_name: Icon(Icons.help_outline_outlined, color: Colors.white),
            color: Colors.yellow,
            button_name: 'Thi Thử',
          ),
        ],
      ),
    );
  }
}
