

abstract class GreenApple{
  void putGreenApple();
}

abstract class RedApple{
  void putRedApple();
}

abstract class GreenTomato{
  void putGreenTomato();
}

abstract class RedTomato{
  void putRedTomato();
}

 abstract class ProductBasket{
  GreenApple getGreenApple();
  RedApple getRedApple();
  GreenTomato getGreenTomato();
  RedTomato getRedTomato();
 }


 class GreenAppleProduct extends GreenApple{
  @override
   void putGreenApple(){
    print('Зеленое яблоко в корзине');
  }
 }

class RedAppleProduct extends RedApple{
  @override
  void putRedApple(){
    print('Красное яблоко в корзине');
  }
}

class GreenTomatoProduct extends GreenTomato{
  void putGreenTomato(){
    print('Зеленый помидор в корзине');
  }
}
class RedTomatoProduct extends RedTomato{
  void putRedTomato(){
    print('Красный помидор в корзине');
  }
}


 class GreenProductBasket implements ProductBasket{

  @override
  GreenApple getGreenApple(){
    return GreenAppleProduct();
  }

  @override
 GreenTomato getGreenTomato(){
    return GreenTomatoProduct();
  }
  @override
  RedApple getRedApple(){
    return RedAppleProduct();
}
  @override
  RedTomato getRedTomato(){
    return RedTomatoProduct();
}
}


class RedProductBasket implements ProductBasket{

  @override
  GreenApple getGreenApple(){
    return GreenAppleProduct();
  }

  @override
  GreenTomato getGreenTomato(){
    return GreenTomatoProduct();
  }
  @override
  RedApple getRedApple(){
    return RedAppleProduct();
  }
  @override
  RedTomato getRedTomato(){
    return RedTomatoProduct();
  }
}








