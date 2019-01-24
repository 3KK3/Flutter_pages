import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(

        onPageChanged: (index){
          print('current index is: $index');
        },

        controller: PageController(
          initialPage: 2,
          viewportFraction: 0.8, // 主轴方向 view的宽度是80%
          keepPage: false,
        ), // 默认显示第几个

        children: <Widget>[

          TitlePage(),

          Container(
            color: Colors.red,
            child: Text("2"),
          ),
          Container(
            color: Colors.purple,
            child: Text("3"),
          ),

        ],

      ),

    );
  }
}

class TitlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Container(color: Colors.limeAccent,),
        ),

        Positioned(
          left: 10.0,
          bottom: 10.0,
          child: Text(
            "ahahaha",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),

        Positioned(
          left: 10.0,
          bottom: 30.0,
          child: Text(
            "2423424234",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),

      ],


    );
  }
}

