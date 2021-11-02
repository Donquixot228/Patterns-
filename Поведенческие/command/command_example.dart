import 'command.dart';



void main(){


Car car = Car();
Driver driver= Driver(StartCommand(car), StopCommand(car), FixCommand(car));

driver.startCar();
driver.stopCar();
driver.fixCar();

}