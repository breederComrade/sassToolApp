import 'package:flutter/material.dart';
import '../config/Theme.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
        onPressed: (){
          print('单击了底部导航');
        },
         backgroundColor: appColor.themeColor,
        child: Center(
          child: 
             Icon(Icons.add,color: Colors.white,size: 30.0,)
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:  BottomAppBar(
        color: appColor.themeColor,
        notchMargin: -10.0, 
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text('首页'),
            Text('图表'),
            Text('销售'),
            Text('库存'),
            Text('我的'),
           
          ],
        ),

      ),
      
      appBar: AppBar(
        elevation: 0.0,
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('text'),
      ),
    );
  }
}
