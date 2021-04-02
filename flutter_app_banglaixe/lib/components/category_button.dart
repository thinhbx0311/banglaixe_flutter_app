import 'package:flutter/material.dart';

class CategoryButton extends StatefulWidget {
  final  name;
  final  total;
  final  number;

  const CategoryButton({Key key, this.name, this.total, this.number}) : super(key: key);
  @override
  _CategoryButtonState createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: 90,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.book),
                  Padding(padding: const EdgeInsets.all(20.0)),
                  Expanded(
                      child: Text(
                    widget.name ?? '',
                    style: TextStyle(fontSize: 17),
                  ))
                ],
              ),
              LinearProgressIndicator(
                value: 0.5,
              ),
              Padding(padding: const EdgeInsets.all(3.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '${widget.number}/${widget.total} câu hỏi',
                    style: TextStyle(fontWeight: FontWeight.w200, fontSize: 10, color: Colors.grey),
                  ),
                  Text('11 câu đúng, 2 câu sai',
                      style:
                          TextStyle(fontWeight: FontWeight.w200, fontSize: 10, color: Colors.grey)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
