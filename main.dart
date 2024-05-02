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

  double angleClock = (hour * 30) + (minute * 0.5);
  double angle = angleClock % 360;
  print("Bucaq $angle");
}
