import 'builder.dart';



void main(){

 GiftBox gift = GiftBoxBuilder()        //создаем сам продукт и используе класс-строитель для настройки
      .buildText("Поздравления с днем рождения")
      .buildBoxColor(Color.RED)
      .buildNumberOrders(10)
      .build();

   print(gift.text);
   print(gift.boxColor);

   print(gift.numberOrders);

}