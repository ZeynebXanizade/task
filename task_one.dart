//EBOB
int ebobFunction(int a, int b) {
  if (b == 0) {
    return a;
  } else {
    return ebobFunction(b, a % b);
  }
}

//EKOB
int ekobFunction(int a, int b) {
  return (a * b) ~/ ebobFunction(a, b);
}