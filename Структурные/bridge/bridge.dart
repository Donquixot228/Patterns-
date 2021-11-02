

//у нас две структуры одна отвечает за тип автомобиля а вторая за марку , одна из низ должна быть более
// главной поэтому клиент будет использовать абстрактный класс кар така как он хранит сссылку на этот интерфейс
abstract class Car{

  Make make=Kia();               //абс класс кар с ссылкой на марку автомобиля
                                 //  два наследника седан и хэтчбек
  Car(Make make){          //создаем контруктор в качестве аргумента передаем ссылку на интерфес марку
    this.make=make;
  }

 void showDetails();       //и создаем метод шоудит который будет выводить марку

}

class Sedan extends Car{
Sedan(Make m) : super(m);

@override
  void showDetails(){
  print('Sedan');
  make.setMake();
 }
}
class HatchBack extends Car{
  HatchBack(Make m) : super(m);

  @override
  void showDetails(){
    print('HatchBack');
    make.setMake();
  }
}


abstract class Make{              //интерфес мейк присваивает марку авто
  void setMake();
}

class Kia implements Make{         //и его две реализации
  @override
  void setMake(){
    print('Kia ');
  }
}
class Skoda implements Make{
  @override
  void setMake(){
    print('Skoda');
  }
}