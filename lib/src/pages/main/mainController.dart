import 'package:flutter/material.dart';
import 'package:futbol/src/pages/register/registerPage.dart'; 

class MainController{
TextEditingController prueba = new TextEditingController();
TextEditingController data = new TextEditingController();
late BuildContext context;
  late Function refresh; 


  Future init(BuildContext context, Function refresh) async {
    this.context = context;
    this.refresh = refresh;

  }
  void capturarDato()  {
    String variable = prueba.text.trim();
    String dato1 = data.text.trim();
   print('valor Input: $variable, $dato1');
    }

 void changePage(){
   Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
 }
    
}

