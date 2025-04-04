import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    const items=15;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   // colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      //   // cardTheme: CardThemeData(color: Colors.grey[300]),
      // ),
      home: Scaffold(
        appBar: AppBar(title: Text('List items with space',style: TextStyle(color: Colors.white,fontSize: 25),),centerTitle: true,backgroundColor: Colors.purple,),
        body: LayoutBuilder(builder:(context,constraints){
          return SingleChildScrollView(
            child: ConstrainedBox(constraints:BoxConstraints(minHeight: constraints.maxHeight),child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,


              children:List.generate(items, (index)=>ItemWidget(text: 'Text $index')),
            ),),
          );
        }),
      ),
    );
  }
}
class ItemWidget extends StatelessWidget{
  const ItemWidget({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context){
    return Card(child: SizedBox(height:100,child:Center(child:  Text(text,style: TextStyle(fontSize: 25),),),),color: Colors.blueGrey,);
  }
}