
// пример создание концерна из двух брендо автомобилей
abstract class CarFactory{
                                         //создаем интрефейс
  void printCreate();

}


class Porsche implements CarFactory{
  @override                                        //две реализации интерфеса
  void printCreate(){
    print('концерн производит Porsche');
  }

}

class Audi implements CarFactory{
  @override
  void printCreate(){
    print('концерн производит Audi');
  }

}

class Concern{
List<CarFactory> factories = [];

void addBrand(CarFactory factori){      //метод для добавления участника
  factories.add(factori);
}

void  removeBrand(CarFactory factori) {     //метод для удаления участника
  factories.remove(factori);
}
void creatConcern(){
  print("Concern creates  \n");                 // главный метод
  for(var elem in factories){
    elem.printCreate();
  }
}
}