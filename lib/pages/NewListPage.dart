import 'package:flutter/material.dart';

class NewsListPage extends StatefulWidget{

  @override
  _NewsListPageState createState(){
    return new _NewsListPageState();
  }

}

class _NewsListPageState extends State<NewsListPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('界面三'),
      ),
      body: new Center(
        child: new Text('这是第三个界面'),
      ),
    );
  }

}