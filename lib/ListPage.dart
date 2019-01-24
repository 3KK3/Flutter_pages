import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {

  Widget _buildItem(BuildContext context, int index) {

    return Container(
      color: Colors.red,
      child: Center(child: Text("当前序号是$index"),),
    );
  }


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      itemBuilder: _buildItem,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 5.0,

      ),

    );
  }
}