abstract class Iterator {
  bool hasNext();

  Object next();
}

abstract class Container {
  Iterator getIterator();
}

class Tasks implements Container {
  List<String> tasks = [
    'Пройти основы Dart',
    'Освоить паттерны проектирования ',
    'Создать первое приложение '
  ];

  @override
  Iterator getIterator() {
    return TaskIterator();
  }
}

class TaskIterator extends Tasks implements Iterator {
  int index = 0;

  @override
  bool hasNext() {
    //будет проверка можно ли считать следующий элемен
    if (index < tasks.length) {
      return true;
    }
    return false;
  }

  @override
  Object next() {
    //будет возвращать элемент по индексу
    return tasks[index++];
  }
}
