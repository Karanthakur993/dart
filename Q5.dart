void main() {
  var str1 = ['S', 'I', 'L', 'K'];
  var str2 = ['K', 'I', 'L', 'S'];
  if (isAnagram(str1, str2))
    print("Anagram");
  else
    print("Not Anagram");
}

bool isAnagram(var str1, var str2) {
  int l1 = str1.length;
  int l2 = str2.length;
  if (l1 != l2) return false;
  str1.sort();
  str2.sort();
  for (int i = 0; i < l1; i++) if (str1[i] != str2[i]) return false;

  return true;
}
