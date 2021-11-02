import 'memento.dart';

void main() {
  Game game = Game();

  game.set('lvl 1', 120);
  print(game);

  //sohranenie
  File file = File();
  file.setSave(game.save());

  game.set('lvl 2', 220);
  print(game);

  game.load(file.getSave());
  print(game);
}
