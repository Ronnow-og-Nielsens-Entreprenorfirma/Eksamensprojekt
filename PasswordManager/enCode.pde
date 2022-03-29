void enCode() {
  for (int i = 0; i < inputs.length; i++) {
    byte[] data = new byte[inputs[i].length()];
    for (int n = 0; n < data.length; n++) {
      data[n] = (byte)inputs[i].charAt(n);
    }
    int g = 0;
    for (int j = 0; j < data.length; j++) {
      int temp = data[j] & 0xff;
      temp = temp + (int)decoder.charAt(g);
      data[j] = (byte)temp;
      g++;
      if (g == decoder.length()) g = 0;
    }
    inputs[i] = "";
    for (int h = 0; h < data.length; h++) {
      inputs[i] += (char)data[h];
    }
  }

}
