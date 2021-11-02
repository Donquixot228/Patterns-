


abstract class Car{
  String makeCreate();

}

class EmptyCar implements Car{
  String makeCreate(){
    return 'Создана пустая машина:\n';
  }
}


class CarDecorator implements Car{

  Car car = EmptyCar();

  CarDecorator(Car car){
    this.car = car;
  }
  @override
  String makeCreate(){
    return car.makeCreate();
  }

}

class AddDoors extends CarDecorator{

  AddDoors(Car car) : super(car);


  String makeAddDoors(){
    return 'К ней добавлены двери \n';
  }

  @override
  String makeCreate(){
    return super.makeCreate() + makeAddDoors();
  }
}


class AddWheels extends CarDecorator{

  AddWheels(Car car) : super(car);

  String makeAddWheels(){
    return 'К ней добавлены колеса \n';
  }

  @override
  String makeCreate(){
    return super.makeCreate() + makeAddWheels();
  }
}