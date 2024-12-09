import 'package:flutter/material.dart';
import 'timeline_page.dart'; // 引用 TimelinePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '自傳應用',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/', // 預設首頁
      routes: {
        '/': (context) => HomePage(),
        '/timeline': (context) => TimelinePage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的自傳"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("查看時間軸"),
          onPressed: () {
            Navigator.pushNamed(context, '/timeline');
          },
        ),
      ),
    );
  }
}
