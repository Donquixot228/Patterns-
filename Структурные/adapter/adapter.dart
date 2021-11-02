//предстваим что у нас машина была разработана в китае а звод находится где-то в европе и
// для того чтобы завод понимал как именно нужно собирать автомобиль нам нужен связующее лицо

abstract class Car{
  void color();
  void carType();
  void mark();

}



class CarFactory{

  void setColor(){
      print('\n Цвет установлен \n');
  }

  void createBody(){
     print('\n Тип кузова создан \n');
  }

  void selectMark(){
     print('\n Марка автомобиля выбрана \n');
  }

}


class ConnectingPerson extends CarFactory implements Car{

  @override
  void color(){
    setColor();
  }
  @override
  void carType(){
    createBody();
  }
  @override
  void mark(){
    selectMark();
  }


}