
// Dekryptere passwordsne.

String deCode(String decode) {
  byte[] data = new byte[input.length()];
  for (int i = 0; i < data.length; i++) {
    data[i] = (byte)decode.charAt(i);
  }
  int g = 0;
  for (int i = 0; i < data.length; i++) {
    int temp = data[i];
    temp = temp / decoder.charAt(g);
  }
  decode = "";
  for (int i = 0; i < data.length; i++) {
    decode = decode + data[i];
  }
  return decode;
}
