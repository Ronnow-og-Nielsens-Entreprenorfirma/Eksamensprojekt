// Funktion til at kryptere nye passwords
void enCode() {
  // Ligger de nye inputs ned i et byte array, og kryptere dem.
  for (int i = 0; i < inputs.length; i++) {
    byte[] data = new byte[inputs[i].length()]; // Definere et byte array
    // Ligger en stringen ned i byte array.
    for (int n = 0; n < data.length; n++) {
      data[n] = (byte)inputs[i].charAt(n);
    }
    int g = 0;
    // Kryptere bytesne, ved at skifte deres værdi
    for (int j = 0; j < data.length; j++) {
      int temp = data[j] & 0xff; // Fjerner most significant bit, så vi har 0 - 256 istedet for -127 - 128
      temp = temp + (int)decoder.charAt(g); // Skifter byte værdien
      data[j] = (byte)temp; // Gemmer den nye byte
      g++;
      if (g == decoder.length()) g = 0;
    }
    // Laver de nye byteværdier om til en string og gemmer den
    inputs[i] = "";
    for (int h = 0; h < data.length; h++) {
      inputs[i] += (char)data[h];
    }
  }
} // enCode() end
