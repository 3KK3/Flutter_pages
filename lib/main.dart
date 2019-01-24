import 'package:flutter/material.dart';
import 'MyPage.dart';
import 'ListPage.dart';
import 'HomePage.dart';
import 'HistoryPage.dart';


main() => runApp(MaterialApp(home: MyApp(),));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text("哈哈哈"),
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_activity),),
              Tab(icon: Icon(Icons.add),),
              Tab(icon: Icon(Icons.pages),),
              Tab(icon: Icon(Icons.print),),
            ],

          ),
        ),

        body: TabBarView(children: [
          HomePage(),
          HistoryPage(),
          ListPage(),
          MyPage(),
        ]),

      ),


    );
  }
}
