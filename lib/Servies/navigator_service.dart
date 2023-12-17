import 'package:flutter/material.dart';

class NavigatorService {
  NavigatorService._();
  static void navPush(BuildContext context , var home){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>home));
  }

  static void navReplace(BuildContext context , var home){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>home));
  }


  static void  navRemove(BuildContext context , var home){
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>home) , (context)=>false);
  }

  static goBack(BuildContext context){
    Navigator.pop(context);
  }


}
