
List<int> list = [1, 2, 3, 4];

double fold(List<int> list, int x, Function callback) {
  int a = x;
  for (int i in list) {
    a = callback(a, i); 
  }
  return a;
}

double value = fold(list, 0, (a, i) => a + i);

double subValue = fold(list, 0, (a, i) => a - i);


double multValue = fold(list, 1, (a, i) => a * i);

double divValue = fold(list, 24, (a, i) => a / i);