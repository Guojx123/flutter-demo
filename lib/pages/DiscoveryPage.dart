import 'package:flutter/material.dart';
import '../components/list.dart';

class DiscoveryPage extends StatefulWidget{

  @override
  _DiscoveryPageState createState(){
    return new _DiscoveryPageState();
  }

}

class _DiscoveryPageState extends State<DiscoveryPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('界面一'),
      ),
      body: new Container(
        child: new List(),
      ),
    );
  }

}
