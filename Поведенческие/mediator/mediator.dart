abstract class User {
  void sendMessage(String message);

  void getMessage(String message);
}

abstract class Chat {
  void sendMessage(String message, User user);
}

class Director implements User {
  late Chat chat;

  Director(Chat chat) {
    this.chat = chat;
  }

  void sendMessage(String message) {
    chat.sendMessage(message, this);
  }

  void getMessage(String message) {
    print('\nDirector get massage $message');
  }
}

class Employee implements User {
  late Chat chat;

  Employee(Chat chat) {
    this.chat = chat;
  }

  void sendMessage(String message) {
    chat.sendMessage(message, this);
  }

  void getMessage(String message) {
    print('\nEmployee get message $message');
  }
}

class TextChat implements Chat {
  late User director;
  List<User> employees = [];

  void setDirector(User director) {
    this.director = director;
  }

  void addEmployee(User u) {
    employees.add(u);
  }

  void sendMessage(String message, User user) {
    for (User u in employees) {
      u.getMessage(message);
    }
    director.getMessage(message);
  }
}
