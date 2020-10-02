void main() {
  List<int> a = [300, 40, 60, 90, 100, 12, 16, 17, 4, 3, 5, 2];
  int max_ele = a.last;
  print(max_ele);

  int size = a.length;

  for (int b = size - 1; b >= 0; b--) {
    if (max_ele < a[b]) {
      max_ele = a[b];
      print(max_ele);
    }
  }
}
