import 'prototype.dart';



void main(){

  final originalPage = Pages('Hello avada',0);


  final firstPage = originalPage.clone();
  final secondPage = originalPage.clone();
  final thirdPage = originalPage.clone();

  for(int i = 0; i<=3; i++){
    switch(i){
      case 1: print("Номер страницы ${firstPage.counter} и ее содержимое ${firstPage.text} ");
      break;
      case 2: print("Номер страницы ${secondPage.counter} и ее содержимое ${secondPage.text} ");
      break;
      case 3: print("Номер страницы ${thirdPage.counter} и ее содержимое ${thirdPage.text} ");
      break;
    }

  }


}
