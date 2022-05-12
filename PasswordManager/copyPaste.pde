// Funktion der kopierer data til clipboard
void copyPaste(String dataNumber) {
  int number = int(dataNumber.substring(4)); // Deler input stringen op
  String copy = ""; // Definere string med det der skal kopieres
  // Hvis det er brugernavn der skal kopieres 
  if (dataNumber.substring(0, 4).equals("user")) {
    passObj user = userData.get(number); // Henter brugernavn som skal kopieres
    copy = user.getUser(); // Sætter copy til brugernavnet
  }
  // Hvis det er password der skal kopieres 
  if (dataNumber.substring(0, 4).equals("pass")) {
    passObj user = userData.get(number); // Henter password som skal kopieres
    copy = user.getPass(); // Sætter copy til password
  }

  // Lægger dataen der skal kopieres ned i clipboard på computeren
  StringSelection data = new StringSelection(copy);
  Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
  clipboard.setContents(data, data);
} // copyPaste() end
