void newJSONObject() {
  String[] inputNames = {"Enter place", "Enter username", "Enter password"};
  Newpass.hide();
  Input.setLabel(inputNames[n]);
  Input.show();
  Input.setFocus(true);

  if (input != temp) {
    inputs[n] = input;
    n++;
    input = temp;
    if (n < 3) {
      Input.setLabel(inputNames[n]);
    }
  }

  if (n > 2) {
    enCode();
    user = new JSONObject();

    user.setInt("id", users.size());
    user.setString("place", inputs[0]);
    user.setString("name", inputs[1]);
    user.setString("passWord", inputs[2]);

    users.setJSONObject(users.size(), user);
    saveJSONArray(users, "ytgefheu827848089urhfudj8e7234eujds/ataDssaP.json");

    Input.hide();
    Newpass.show();
    boInput = false;
    Logout.show();
    inputs = new String[3];
    Logout.show();
    n = 0;
  }
}
