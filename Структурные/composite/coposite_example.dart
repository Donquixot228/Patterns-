import 'composite.dart';

void main(){

  Concern concern = Concern();

  CarFactory firstBrand = Audi();
  CarFactory secondBrand = Porsche();

  concern.addBrand(firstBrand);
  concern.addBrand(secondBrand);
  concern.creatConcern();

}