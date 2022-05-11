// Funktion der kopiere data til clipoard
void copyPaste(String dataNumber) {
  int number = int(dataNumber.substring(4)); // Deler indput stringen op
  String copy = ""; // Definere string med det der skal kopieres
  // Hvis det er brugernavn der skal kopieres 
  if (dataNumber.substring(0, 4).equals("user")) {
    passObj user = userData.get(number); // Henter bruger navn som skal kopieres
    copy = user.getUser(); // Sætter copy til brugernavnet
  }
  // Hvis det er password der skal kopieres 
  if (dataNumber.substring(0, 4).equals("pass")) {
    passObj user = userData.get(number); // Henter bruger navn som skal kopieres
    copy = user.getPass(); // Sætter copy til brugernavnet
  }

  // Lægger dataen der skal kopieres ned i clipboard på computeren
  StringSelection data = new StringSelection(copy);
  Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
  clipboard.setContents(data, data);
} // copyPaste() end
