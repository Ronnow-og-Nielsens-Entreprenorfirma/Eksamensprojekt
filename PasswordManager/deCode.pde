// Dekryptere passwordsne.
String deCode(String decode) {
  byte[] data = new byte[decode.length()]; // definere et byte array
  // Lægger det der skal dekrypteres ned i byte array, med et byte for hver char
  for (int i = 0; i < data.length; i++) {
    data[i] = (byte)decode.charAt(i);
  }
  int g = 0;
  // Dekryptere hver enkelte byte
  for (int i = 0; i < data.length; i++) {
    int temp = data[i] & 0xff; // Fjerner most significant bit, så vi har 0 - 256 istedet for -127 - 128
    temp = temp - (int)decoder.charAt(g); // skifter byte værdien
    data[i] = (byte)temp; // Gemmer det nye byte
    g++;
    if (g == decoder.length()) g = 0;
  }
  decode = "";
  // Ligger de dekryptered bytes ned i en string som chars
  for (int i = 0; i < data.length; i++) {
    decode = decode + (char)data[i];
  }

  return decode; // Retunere den dekryptered string
} // deCode() end
