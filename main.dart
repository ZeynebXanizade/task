

import 'task_one.dart';

void main() {
// Dart proqlasdirma dilində verilən ədədin  Əbob və Əkobun tapılması.
  int numOne = 5;
  int numTwo = 2;
  int ebob = ebobFunction(numOne, numTwo);
  int ekob = ekobFunction(numOne, numTwo);
  print("Ekob : $ekob");
  print("Ebob : $ebob");

  //Saat 2-yə 15 dəqiqə işləyir. Əqrəblər arasındaki bucaq neçə dərəcədir.
  int hour = 2;
  int minute = 15;

  double minutedegrees = minute * (360 / 60);
  double hourDegrees = (hour % 12) * (360 / 12) + (minutedegrees / 12);
  double angleClock = (hourDegrees - (3 * (360 / 12))) % 360;
  print("Bucaq $angleClock");

}
