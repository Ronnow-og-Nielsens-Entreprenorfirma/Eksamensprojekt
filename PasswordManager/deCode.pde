
// Dekryptere passwordsne.

String deCode(String input) {
  String res = input;
  byte[] data = new byte[input.length()];
  for (int i = 0; i < data.length; i++) {
    data[i] = (byte)input.charAt(i);
  }
  return res;
}
