import 'state.dart';

void main() {
  DoWithCar doWithCar = Open();
  Car car = Car();

  car.setActivity(doWithCar);

  for (int i = 0; i < 4; i++) {
    car.justDoIt();
    car.changeActivity();
  }
}
