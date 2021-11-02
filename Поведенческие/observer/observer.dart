

abstract class HRManager {
  void handleEvent(List<String> vacancies);
}


// interf наблюдаемogo обьектa -  сайт с ваканcиями
abstract class Observed {
  void addObserver(HRManager observer);

  void removeObserver(HRManager observer);

  void notifyObservers();
}

class Subscriber implements HRManager {
  late String name;

  Subscriber(String name) {
    this.name = name;
  }

  @override
  handleEvent(List<String> vacancies) {
    print('$name , для вас появились кандидаты на вакансию: \n $vacancies\n');
  }
}

class WorkSite implements Observed{

List<String> vacancies = [];

List<HRManager> subscribers = [];

void addCandidate(String vacancy){
  this.vacancies.add(vacancy);
  notifyObservers();
}

void removeCandidate(String vacancy){
  this.vacancies.remove(vacancy);
  notifyObservers();
}

@override
void addObserver(HRManager observer){
this.subscribers.add(observer);
}

@override
  void removeObserver(HRManager observer){
this.subscribers.remove(observer);
}

@override
  void notifyObservers(){
 for(HRManager obs in subscribers ){
   obs.handleEvent(this.vacancies);
 }
}

}











