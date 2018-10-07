import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/DiscoveryPage.dart';
import 'pages/MyInfoPage.dart';
import 'pages/NewListPage.dart';


void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'demo',
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }

}

class HomePage extends StatefulWidget{

  @override
  _HomePageState createState() {
    // TODO: implement createState
    return new _HomePageState();
  }

}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller =new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: new TabBarView(
            controller:controller,
            children: <Widget>[
              new DiscoveryPage(),
              new MylnfoPage(),
              new NewsListPage(),
            ],
        ),
      bottomNavigationBar: new Material(
        color: Colors.orangeAccent,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(text: "列表",icon: new Icon(Icons.home)),
            new Tab(text: "通知",icon: new Icon(Icons.message)),
            new Tab(text: "我的",icon: new Icon(Icons.cloud),)
          ],
        ),
      ),
    );
  }

}