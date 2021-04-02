import 'package:flutter/material.dart';
import 'package:flutter_app_banglaixe/components/category_button.dart';
import 'package:flutter_app_banglaixe/components/gridview_list.dart';
import 'package:flutter_app_banglaixe/components/horizontal_listview.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: ListView(
        children: <Widget>[
          Horizontal_ListView(),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: GridViewList(),
          ),
          Padding(padding: const EdgeInsets.all(10.0)),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: CategoryButton(
              name: 'Ôn tập tất cả câu hỏi',
              number: 10,
              total: 600,
            ),
          ),
          Container(
            height: 20,
            child: Center(
              child: Text(
                'ÔN TẬP THEO CHỦ ĐỀ',
                style: TextStyle(color: Colors.black45),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: CategoryButton(
              name: 'Câu hỏi điểm liệt',
              number: 10,
              total: 600,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: CategoryButton(
                name: 'Khái niệm và quy tắc', number: 10, total: 600),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: CategoryButton(
                name: 'Nghiệp vụ vận tải', number: 10, total: 600),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: CategoryButton(
                name: 'Văn hóa đạo đức', number: 10, total: 600),
          ), Container(
            padding: const EdgeInsets.all(10.0),
            child: CategoryButton(
                name: 'Cấu tạo và sửa chữa', number: 10, total: 600),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: CategoryButton(
                name: 'Biển báo đường bộ', number: 10, total: 600),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: CategoryButton(
                name: 'Sa hình', number: 10, total: 600),
          ),

        ],
      ),
    );
  }
}
