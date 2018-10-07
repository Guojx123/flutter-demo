import 'package:flutter/material.dart';

class MylnfoPage extends StatefulWidget{

  @override
  _MylnfoPageState createState(){
    return new _MylnfoPageState();
  }

}

class _MylnfoPageState extends State<MylnfoPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('界面二'),
      ),
      body: new Center(
        child: new Text('这是第二个界面'),
      ),
    );
  }

}