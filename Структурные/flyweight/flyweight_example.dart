import 'flyweight.dart';


void main() {
DeveloperFactory developerFactory = DeveloperFactory();

List<Developer> developers = [];

developers.add(developerFactory.getDeveloperBySpecialty("Java"));
developers.add(developerFactory.getDeveloperBySpecialty("Java"));
developers.add(developerFactory.getDeveloperBySpecialty("Cpp"));
developers.add(developerFactory.getDeveloperBySpecialty("Cpp"));

for(Developer developer in developers){
  developer.writeCode();
}

}