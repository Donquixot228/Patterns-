
/*
* пример : много.польз.  програмаа ,одна база и должна быть одна очка подключения к базе
*            словарь - все пользователи будут обращаться к жтому справочнику
* */
//


class Singleton {
  static final Singleton _singleton =  Singleton._internal();

  Singleton._internal();

  static Singleton get instance => _singleton;  // статическое поле getter

  String? note;


}







