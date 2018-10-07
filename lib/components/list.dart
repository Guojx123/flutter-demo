import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

class List extends StatefulWidget{

  @override
  ListState createState() {
    // TODO: implement createState
    return new ListState();
  }

}

class ListState extends State<List>{

  
  //http请求
//  getData() async{
//    var url='https://jsonplaceholder.typicode.com/posts';
//    var httpClient=new HttpClient();
//    
//    var result;
//    try{
//      var request= await httpClient.getUrl(Uri.parse(url));
//      var response=await request.close();
//     
//      if(response.statusCode == HttpStatus.OK){
//        var json=await response.transform(UTF8.decoder).join();
//        Map result= JSON.decoder(json);
//      }else{
//        result='Error getting JSON data:\nHttp status ${reaponse.statusCode}';
//      }
//    }catch(exception){
//      result= 'Failed getting JSON data';
//    }
//    if(!mounted) return;
//    setState(() {
//      //data=result;
//    });
//  }


  //列表
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context,int index){
          return new Card(
            child: new Container(
              padding: new EdgeInsets.all(10.0),
              child: new ListTile(
                subtitle: new Container(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text("标题",style: new TextStyle(fontWeight:FontWeight.bold,fontSize: 16.0),
                          ),
                        ],
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Text("时间："),
                              new Text("2018-10-6 20:27"),
                            ],
                          ),
                        ],
                      ),
                      new Row(
                        children: <Widget>[
                          new Container(
                            padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 2.0),
                            child: new Text("内容"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                trailing: new Icon(Icons.keyboard_arrow_right,color: Colors.grey),
              ),
            ),
          );
        }
    );
  }

}