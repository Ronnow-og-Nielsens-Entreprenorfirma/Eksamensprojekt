void copyPaste(String dataNumber) {
  int number = int(dataNumber.substring(4));
  String copy = "";
  if (dataNumber.substring(0, 4).equals("user")) {
    copy = userData[number].getUser();
  }
  if (dataNumber.substring(0, 4).equals("pass")) {
    copy = userData[number].getPass();
  }
  
  StringSelection data = new StringSelection(copy);
  Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
  clipboard.setContents(data, data);
  
  
}
