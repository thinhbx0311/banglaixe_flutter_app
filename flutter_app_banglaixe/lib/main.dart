import 'package:flutter/material.dart';
import 'views/notification_page.dart';
import 'views/home_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30, fontFamily: 'Montserrat', color: Colors.white
          ),
          headline2: TextStyle(
              fontSize: 15, fontFamily: 'Montserrat', color: Colors.white
          )
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    MainPage(),
    NotificationPage(),
    Text("Info")
  ];

  @override
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ôn thi GPLX - B1"),
        actions: [
          InkWell(
            child: Container(
              child: Row(
                children: <Widget>[
                  Icon(Icons.settings_outlined),
                  Padding(padding: const EdgeInsets.all(5)),
                  Text("CÀI ĐẶT"),
                  Padding(padding: const EdgeInsets.all(10))
                ],
              ),
            ),
            onTap: (){
              print('On tap');
            },
          )
        ],
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books),
            label: 'Ôn Thi GPLX',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Thông Báo'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Thông Tin')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTap,
      ),
    );
  }
}
