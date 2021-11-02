import 'mediator.dart';


void main(){

  TextChat chat = TextChat();

  User director = Director(chat);
  User first_employee = Employee(chat);
  User second_employee = Employee(chat);

  chat.setDirector(director);
  chat.addEmployee(first_employee);
  chat.addEmployee(second_employee);

  first_employee.sendMessage('Привет, я новый сотрудник');





}