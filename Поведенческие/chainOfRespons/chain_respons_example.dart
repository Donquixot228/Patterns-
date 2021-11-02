import 'chain_respons.dart';

void main() {
  Chain chainCalc1 = AddNumbers();
  Chain chainCalc2 = MinusNumbers();
  Chain chainCalc3 = MultNumbers();

  chainCalc1.setNextChain(chainCalc2);
  chainCalc2.setNextChain(chainCalc3);

  Numbers request = Numbers(4, 2, 'minus');

  chainCalc1.calculate(request);
}
