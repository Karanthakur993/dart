void main() {
  List<int> a = [1, 2, 3, 5, 4, 6, 8];
  int n = a.last;
  int adder = 0;
  double cal;

  double total = n * (n + 1) / 2;

  for (int x = 0; x < a.last - 1; x++) {
    int val = a[x];
    adder = adder + val;
  }
  double missing = total - adder;
  print("missing value is $missing");
}
