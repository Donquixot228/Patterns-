abstract class Visitor {
  void visitSite(Site site);

  void visitMobile(MobileApp mobileApp);
}

abstract class Element {
  void accept(Visitor visitor);
}

class MobileApp implements Element {
  void accept(Visitor visitor) {
    visitor.visitMobile(this);
  }
}

class Site implements Element {
  void accept(Visitor visitor) {
    visitor.visitSite(this);
  }
}

class FirstVisitor implements Visitor {
  void visitSite(Site site) {
    print('Первый клиент заказал  сайт');
  }

  void visitMobile(MobileApp mobileApp) {
    print("Первый клиент отказался от мобильного приложения");
  }
}

class SecondVisitor implements Visitor {
  void visitSite(Site site) {
    print('Второй клиент отказался от сайта');
  }

  void visitMobile(MobileApp mobileApp) {
    print('Второй клиент заказал  мобильное приложение');
  }
}
