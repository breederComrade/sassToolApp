 

import 'package:flutter/material.dart';
import '../config/Theme.dart';
import '../pages/chart.dart';
import '../pages/discover.dart';
import '../pages/my.dart';
import '../pages/order.dart';
import '../pages/wh.dart';
import '../pages/home.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class tabMap {
  tabMap({this.iconData,this.text});
  IconData iconData;
  String text;
}
class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  int _selectedIndex = 0;
   var _pageController = new PageController(initialPage: 0);
  // 控制器



// 构建item
    Widget _buildTabItem({tabMap item,int index,ValueChanged<int> onPressed}){
       Color color = _selectedIndex==index?Theme.of(context).primaryColor:Colors.grey;
      return Expanded(child: SizedBox(
            height:50.0,
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
              onTap:(){
                if(index !=2){
                   onTap(index);
                }
                
              },
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10.0,),child: Icon(item.iconData,color:color,size: 22.0,),),
                  Text(item.text,style: TextStyle(
                    color: Colors.grey,fontSize: 12.0
                  ),)

                ],
              ),
              ),
            ),
      ),);
    }


  // tabaItems
    var _tabList =[
      tabMap(iconData: Icons.album,text:'首页'),
      tabMap(iconData: Icons.face,text:'图表'),
      tabMap(iconData: Icons.ac_unit,text:'下单'),
      tabMap(iconData: Icons.gps_fixed,text:'库存'),
      tabMap(iconData: Icons.av_timer,text:'我的'),
    ];
   var pageList = [
     Home(),
     Chart(),
     Order(),
     Wh(),
     My(),
   ];

Widget _rendRow(BuildContext context,int index){
    return pageList[index];
  }

  // bottomnaviagtionbar 和 pageview 的联动
  void onTap(int index) {
    // 过pageview的pagecontroller的animateToPage方法可以跳转
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void _pageChange(int index) {
    setState(() {
      if (_selectedIndex != index) {
        _selectedIndex = index;
      }
    });
  }



  @override
  Widget build(BuildContext context) {
  List<Widget> items = List.generate(5, (int index){
       return _buildTabItem(
          item:_tabList[index],
          index:index,
          onPressed:(index){
            setState(() {
                _selectedIndex = index;          
            });
          }
       );
    });
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
        color: Colors.white,
        notchMargin: -10.0, 
        
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items,
        ),

      ),
      
      // appBar: AppBar(
      //   elevation: 0.0,
      //   title: Text(widget.title),
      // ),
      body: PageView.builder(
          controller: _pageController,
          itemCount: 5,
          itemBuilder:(BuildContext context,int index)=>_rendRow(context, index),
          scrollDirection: Axis.horizontal,
          onPageChanged: _pageChange,
        ),
    );
  }
}
