import 'package:flutter/material.dart';

class TextAddProvider extends ChangeNotifier{

  List<String> _todo=[];
  List<String> get todo=>_todo;
 void ChangeText(String text){
  _todo.add(text);
  notifyListeners();
 }

}