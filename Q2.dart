void main() {
  List a = [1, 2, 3, 9, 8];
  int check = 0;
  int size = a.length;
  for (int i = 0; i < size; i++) {
    int c = i + 1;
    for (int j = c; j < size; j++) {
      if (a[i] == a[j]) {
        check = 1;
        print("boy");
      }
    }
  }

  if (check == 0) {
    print("girl");
  }
}
