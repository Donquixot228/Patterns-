import 'template.dart';

void main() {
  FixResult goodFix = FixDone();
  FixResult badFix = FixNotDone();

  goodFix.showFix();
  badFix.showFix();
}
