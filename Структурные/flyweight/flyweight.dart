//легковес - принцип заключается в том чтобы поддерживать множество мелких объектов используя разделение
//

abstract class Developer {

  void writeCode();

}

class JavaDeveloper implements Developer{
  @override
  void writeCode(){
    print('Java developer writes java code');
  }
}

class CppDeveloper implements Developer{

  @override
  void writeCode(){
    print('Cpp developer writes cpp code');
  }
}

class DeveloperFactory{

    final Map<String,Developer> developers = {};

    Developer  getDeveloperBySpecialty(String specialty){

      Developer developer = specialty;
      if(developer = null){
        switch(developer){
          case "Java":
              print('нанимаем джава разраба');
              developer = JavaDeveloper();
              break;
          case 'Cpp':
              print('нанимаем спп разраба');
              developer = CppDeveloper();
              break;
        }
        developer=(specialty,developer);
      }
     return developer;
    }
}
// //flyweight
// abstract class Shape{
//   void draw();
//
// }
//
// class Point implements Shape{
//   void draw(){
//     print("$x $y рисуем точку");
//   }
// }
// class Circle implements Shape{
//   void draw(){
//     print("$x $y рисуем круг");
//   }
// }
//
// class ShapeFactory{
//
//   static final Map<String,Shape> shapes = {};
//   Shape getShape(String shapeName){
//
//     Shape shape = shapes.add(shapeName);
//     if(shape == null){
//       switch(shapeName){
//         case 'круг':
//           shape = Circle();
//           break;
//         case 'точка':
//           shape= = Point();
//           break;
//       }
//       shapes.add(shapeName,shape);
//     }
//     return shape;
//   }
//
//
//
//
// }