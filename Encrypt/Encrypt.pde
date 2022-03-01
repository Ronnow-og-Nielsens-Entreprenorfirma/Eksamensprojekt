byte b[] = loadBytes("text.txt");
int nums = 0;

for (int i = 0; i < b.length; i++) {
  int a = b[i] & 0xff;
  String s = " " + a + " |";
  print(s);
  nums += s.length();
  a -= 300;
  b[i] = (byte)a;
}

println();

for (int i = 0; i < nums; i++) {
  print("-");
}

println();

for (int i = 0; i < b.length; i++) {
  int a = b[i] & 0xff;
  print(" " + a + " |");
}

println();
println();

saveBytes("text.txt", b);
print("done");
