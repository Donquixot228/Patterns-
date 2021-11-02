import 'singleton.dart';
//
 void main(){


  Singleton s1 = Singleton.instance;
  s1.note = 'Первая записка';

  Singleton s2 = Singleton.instance;
   s2.note = 'Вторая записка';

   Singleton s3 = Singleton.instance;
   s3.note = 'Третья строка';

  print(s1.note);
  print(s2.note);        //
  print(identical(s1, s2));  // true
  print(s1 == s2);           // true


}