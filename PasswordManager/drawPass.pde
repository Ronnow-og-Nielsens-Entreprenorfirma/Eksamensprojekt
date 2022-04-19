
// Skriver passwordsne ud på skærmen.

void drawPass() { 
  for (int i=0; i<users.size(); i++) {
    userData = (passObj[]) expand(userData, userData.length + 1);

    user = users.getJSONObject(i);
    
    String place = deCode(user.getString("place"));

    String username = deCode(user.getString("name"));

    String password = deCode(user.getString("passWord"));

    userData[userData.length-1] = new passObj(place, username, password);

    userData[userData.length-1].show(y, userData.length-1);
  }
}
