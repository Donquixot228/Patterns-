
//пример с подарочной коробкой

enum Color{
  RED,BLUE,withFLOWERS
}                                                          //перечисляем цвет коробки

class GiftBox{

   String? text;                                         //создаем сам продукст(нашу подароную коробку) с методами по
   Color? boxColor;                                       // настройке визуального вида и содержимого и количетво коробок
   int? numberOrders;


   void setText(String text){this.text = text;}
   void setBoxColor(Color color){this.boxColor = color;}
   void setNumberOrders(int numberOrders){this.numberOrders = numberOrders;}


}

class GiftBoxBuilder{
  String text = "default" ;
  Color color = Color.BLUE;                          //создаем сам класс-строитель
  int order = 1;

  GiftBoxBuilder buildText(String text){
     this.text = text;
     return this;
  }

  GiftBoxBuilder buildBoxColor (Color color){
     this.color = color;
     return this;
  }

  GiftBoxBuilder buildNumberOrders(int order){
     this.order=order;
     return this;
 }

 GiftBox build(){
     GiftBox gift = GiftBox();                              //сам метод билд который возвращат класс продукта но уже с поучеными настройками
     gift.setText(text);
     gift.setBoxColor(color);
     gift.setNumberOrders(order);
     return gift;
 }

}




