
// Skriver passwordsne ud på skærmen.

void drawPass() {
  String print = "";
  for (int i = 0; i < users.size(); i++) {
    user = users.getJSONObject(i);
    String text = user.getString("place");
    text = deCode(text);
    print += text;
    
    text = user.getString("name");
    text = " Username: " + deCode(text);
    print += text;
    
    text = user.getString("passWord");
    text = " Password: " + deCode(text);
    print += text;
  
  text(print, x, y);
  
  y += 50;
  print = "";
  }
}
