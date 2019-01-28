import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
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
              Container(
                 height:40.0,
                decoration: BoxDecoration(
                 
                  image: DecorationImage(
                    image: NetworkImage('https://cdn-images-1.medium.com/max/2560/1*coIJNA2IPue97FRDOWKjNg.jpeg')
                  )
                ),
                child: 
                 Text('data') ,
                
              )
            ],
         )
       )
    );
  }
}