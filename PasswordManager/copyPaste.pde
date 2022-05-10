void copyPaste(String dataNumber) {
  int number = int(dataNumber.substring(4));
  String copy = "";
  if (dataNumber.substring(0, 4).equals("user")) {
    passObj user = userData.get(number);
    copy = user.getUser();
  }
  if (dataNumber.substring(0, 4).equals("pass")) {
    passObj user = userData.get(number);
    copy = user.getPass();
  }
  
  StringSelection data = new StringSelection(copy);
  Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
  clipboard.setContents(data, data);
  
}
