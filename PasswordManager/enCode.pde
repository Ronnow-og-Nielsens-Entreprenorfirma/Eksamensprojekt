String[] enCode(String[] input) {
  print("enCodeing");
  for (int i = 0; i < input.length; i++) {
    byte[] data = new byte[input[i].length()];
    for (int n = 0; n < data.length; n++) {
      data[n] = (byte)input[i].charAt(n);
    }
    int g = 0;
    for (int j = 0; j < data.length; j++) {
      int temp = data[j];
      temp = temp * decoder.charAt(g);
      data[j] = (byte)temp;
      g++;
      if (g == decoder.length()) g = 0;
    }
    for (int h = 0; h < data.length; h++) {
      input[i] += (char)data[h];
    }
  }
  
  return input;
}
