import 'package:flutter/material.dart';
import 'package:tut_e_commerce_app/app/app.dart';

class Test extends StatelessWidget{
  const Test({Key? key}) : super(key: key);

  void updateState(){
    MyApp.instance.appState = 10;
  }

  void getAppState(){
    print(MyApp.instance.appState);
  }



  @override
  Widget build (BuildContext context){
    return Container();
  }
}