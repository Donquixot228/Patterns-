import 'abstract_factory.dart';


void main() {
print('\n');

// Зеленые продукты в корзине
ProductBasket greenproductBasket = GreenProductBasket();

GreenApple greenApple = greenproductBasket.getGreenApple();
GreenTomato greenTomato = greenproductBasket.getGreenTomato();
greenApple.putGreenApple();
greenTomato.putGreenTomato();

print('\n');
//красные продукты в корзине
ProductBasket redproductBasket = RedProductBasket();

RedApple redApple = redproductBasket.getRedApple();
RedTomato redTomato = redproductBasket.getRedTomato();
redApple.putRedApple();
redTomato.putRedTomato();

}












