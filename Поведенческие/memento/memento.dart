
class Game {
  late String level;

  late int ms;

  void set(String level, int ms) {
    this.level = level;
    this.ms = ms;
  }

  void load(Save save) {
    level = save.getLevel();
    ms = save.getMS();
  }

  Save save() {
    return Save(level, ms);
  }

  @override
  String toString() {
    return 'Game\n version: $level , date $ms';
  }
}

class Save {
  late String level;

  late int ms;

  Save(String level, int ms) {
    this.level = level;
    this.ms = ms;
  }

  String getLevel() {
    return level;
  }

  int getMS() {
    return ms;
  }
}

// файл сохранения
class File {
  late Save save;

  Save getSave() {
    return save;
  }

  void setSave(Save save) {
    this.save = save;
  }
}
