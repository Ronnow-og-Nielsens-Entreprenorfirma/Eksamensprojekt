
// Dekryptere passwordsne.

String deCode(String decode) {
  byte[] data = new byte[decode.length()];
  for (int i = 0; i < data.length; i++) {
    data[i] = (byte)decode.charAt(i);
  }
  int g = 0;
  for (int i = 0; i < data.length; i++) {
    int temp = data[i] & 0xff;
    temp = temp - (int)decoder.charAt(g);
    data[i] = (byte)temp;
    g++;
    if (g == decoder.length()) g = 0;
  }
  decode = "";
  for (int i = 0; i < data.length; i++) {
    decode = decode + (char)data[i];
  }
  
  return decode;
}
