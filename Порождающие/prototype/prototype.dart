
// пример с копирование страниц

abstract class Prototype{          //создаем интерфейс
  Object clone();            // обьявили метод как возвращающий обджект, для того чтобы наш интерфес был универсльным, пименим для других классов не только поинт
}


class Pages extends Prototype{
  int counter;
  String text;
  Pages(this.text,this.counter);



  Pages clone() => Pages(text,++counter);
    //реалтзуем метод клон который будет возвращать самого себя но с увеличеным на единицу счетчиком

}


