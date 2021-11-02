import 'iterator.dart';



void main() {


  Tasks c = Tasks();
  Iterator it = c.getIterator();


  while (it.hasNext()) {
    print(it.next());

}
}