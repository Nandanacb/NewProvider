import'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoprovider/todoprovider.dart';

class Todoscreen extends StatefulWidget{
  @override
  State<Todoscreen> createState()=> _TodoscreenState();
  }
class _TodoscreenState extends State<Todoscreen>{
  
  @override
  Widget build(BuildContext context){
    final textaddprovider=Provider.of<TextAddProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo with provider"),
      ),
      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'enter a task'),),
              SizedBox(height: 16,),
              FloatingActionButton(onPressed:(){
                textaddprovider.ChangeText;
              },child: Text("Add"),),
            Expanded(
              child: ListView.builder(itemBuilder: (context,index){
                return Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(14),),
                  child: Text("${textaddprovider.todo}"),
                );
              }),
            )
            
            ],
          ),
        ),
      )
      
    );
  }
}