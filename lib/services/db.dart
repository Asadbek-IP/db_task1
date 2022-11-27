import 'package:hive_flutter/hive_flutter.dart';

class DB{
  var box = Hive.box("nem_nig");

   void writeName(String name){
     box.put("username", name);
  }
   
   String? getName(){
    return box.get("username");
   }
   
     void writePassword(String pass){
     box.put("pass", pass);
  }
   
   String? getPassword(){
    return box.get("pass");
   }
}