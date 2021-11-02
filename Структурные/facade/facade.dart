// фасад - предоставляет простой интерфейс к сложной системе классов



// реализуем стиралку
class Power{

  void on(){
    print('Включение стиралки');
  }
  void off(){
    print('Выключение стиралки');
  }
}

class Washer{
  bool clothes = false;

  bool hasClothes(){
    return clothes;
  }

  void load(){

    clothes = true;
  }
  void unload(){
    clothes = false;
  }

}

class LoadWasher{
  void loadWasher(Washer washer){
    if(washer.hasClothes()){
      print('Происходит загрузка машинки ');
    }
    else {
      print('закиньте вещи в машинку');
    }


  }
}
//наш фасад который будет компоновать наш Power Washer LoadWasher а также будет содержать экземпляры наших классов
class Start{
 Power power = Power();
 Washer washer = Washer();
 LoadWasher loadWasher = LoadWasher();

  void start(){
    power.on();
    washer.load();
    loadWasher.loadWasher(washer);

  }

}


