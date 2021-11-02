import 'observer.dart';


void main(){

WorkSite workSite = WorkSite();
HRManager hRManager = Subscriber('Старикова Алина');


workSite.addCandidate(' Новиков Артур');
workSite.addCandidate(' Иванов Артем');


workSite.addObserver(hRManager);

workSite.notifyObservers();



}