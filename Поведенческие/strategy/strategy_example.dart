import 'strategy.dart';

void main() {
  Car car = Car();

  car.setActivity(Open());
  car.executeActivity();

  car.setActivity(Start());
  car.executeActivity();

  car.setActivity(Stop());
  car.executeActivity();

  car.setActivity(Close());
  car.executeActivity();
}
