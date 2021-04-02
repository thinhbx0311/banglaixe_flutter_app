import 'package:flutter/material.dart';
import 'package:flutter_app_banglaixe/views/Save_Page.dart';
import 'package:flutter_app_banglaixe/views/exams_page.dart';
import 'package:flutter_app_banglaixe/views/sa_hinh.dart';
import 'icon_button_home.dart';
import 'package:flutter_app_banglaixe/views/tips _page.dart';

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
            icon_name: Icon(
              Icons.my_library_books_outlined,
              color: Colors.white,
            ),
            color: Colors.blue,
            button_name: 'Thi Thử',
            page_name: Exams_Page(),
          ),
          IconButtonHome(
            icon_name: Icon(Icons.bookmark_border, color: Colors.white),
            color: Colors.green,
            button_name: 'Lưu',
            page_name: Save_Page(),
          ),
          IconButtonHome(
            icon_name: Icon(Icons.cancel_outlined, color: Colors.white),
            color: Colors.red,
            button_name: 'Câu Sai',
            page_name: TipsPage(),
          ),
          IconButtonHome(
            icon_name: Icon(Icons.menu_book_outlined, color: Colors.white),
            color: Colors.yellow,
            button_name: 'Hay Sai',
            page_name: TipsPage(),
          ),
          IconButtonHome(
            icon_name: Icon(Icons.directions_car, color: Colors.white),
            color: Colors.blue,
            button_name: 'Sa Hình',
            page_name: SaHinhPage(),
          ),
          IconButtonHome(
            icon_name: Icon(Icons.lightbulb_outline, color: Colors.white),
            color: Colors.green,
            button_name: 'Mẹo',
            page_name: TipsPage(),
          ),
          IconButtonHome(
            icon_name: Icon(Icons.not_interested_outlined, color: Colors.white),
            color: Colors.red,
            button_name: 'Biển báo',
            page_name: TipsPage(),
          ),
          IconButtonHome(
            icon_name: Icon(Icons.help_outline_outlined, color: Colors.white),
            color: Colors.yellow,
            button_name: 'Trợ Giúp',
            page_name: TipsPage(),
          ),
        ],
      ),
    );
  }
}
