import 'visitor.dart';

void main() {
  Element site = Site();
  Element mobileApp = MobileApp();
  Visitor firstVisitor = FirstVisitor();
  Visitor secondVisitor = SecondVisitor();

  print('\n');

  site.accept(firstVisitor);
  mobileApp.accept(firstVisitor);

  print('\n');

  site.accept(secondVisitor);
  mobileApp.accept(secondVisitor);
}
