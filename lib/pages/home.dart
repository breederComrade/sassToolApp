import 'package:flutter/material.dart';
import '../config/Theme.dart';
class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('日常'),
           elevation: 0.0,

         ),
         body: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child:Container(
                      color: appColor.themeColor,
                      child:Text('data')
                    )
                   ,
                  ),
                  Expanded(
                    child:Container(
                      color: appColor.themeColor,
                      child:Text('data')
                    )
                   ,
                  ),
                ],
              )

            ]
              ),
             
             
            
         )
    );
  }
}