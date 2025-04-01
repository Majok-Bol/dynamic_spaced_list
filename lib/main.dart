import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    const items=5;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('List items with space',style: TextStyle(color: Colors.white,fontSize: 25),),centerTitle: true,backgroundColor: Colors.purple,),
        body: LayoutBuilder(builder:(context,constraints){
          return SingleChildScrollView(
            child: ConstrainedBox(constraints:BoxConstraints(minHeight: constraints.maxHeight)),
          );
        }),
      ),
    );
  }
}