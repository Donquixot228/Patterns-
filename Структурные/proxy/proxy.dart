//заместитель - паттрен для замещения другого объекта и контроля дотупа к нему

abstract class Project{
  void run();
}




class RealProject implements Project{

 String _url;

RealProject(String url){
  this._url = url;
  load();
}

  void load(){
    print('loading project from $url');
  }


  @override
  void run(){
    print('Running project ');

  }
}

//proxy. мы будем загружать обьект не при создании его а тольок при запуске проекта
class ProxyProject implements Project{
  String _url;
RealProject realProject=RealProject('');

ProxyProject(String url){
  this._url;
}

@override
  void run(){
     if(realProject == null){
       realProject = RealProject(url);
     }
     realProject.run();
}



}

// abstract class Subject {
//   void someMethod();
// }
//
// class ExpensiveClass implements Subject {
//   String name;
//
//   ExpensiveClass(this.name);
//
//   void someMethod() {
//     print("someMethod of $name (an ExpensiveClass) is being called");
//   }
// }
//
// class Proxy implements Subject {
//   String _name;
//   ExpensiveClass _sub;
//
//   Proxy(this._name);
//
//   void someMethod() {
//     print("someMethod of $_name (a Proxy) is being called");
//     _subject().someMethod();
//   }
//
//   ExpensiveClass _subject() {
//     if (_sub != null) return _sub;
//     print("Creating an instance of ExpensiveClass for the proxy...");
//     _sub = ExpensiveClass(_name);
//     return _sub;
//   }
// }
