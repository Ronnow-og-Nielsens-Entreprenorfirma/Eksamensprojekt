// SletData funktion kaldes når et passwords skal slettes
void sletData(int n) {
  users.remove(n); // Fjerner object fra JSONArray
  saveJSONArray(users, "ytgefheu827848089urhfudj8e7234eujds/ataDssaP.json"); // Gemmer det nye JSONArray i JSON fil
  // Tømmer userData arraylist og fylder det med det nye JSONArray
  userData.clear();
  float y = 150;
  for (int i = 0; i < users.size(); i++) {
    y += 50;
    user = users.getJSONObject(i);
    String p = deCode(user.getString("place"));
    String u = deCode(user.getString("name"));
    String k = deCode(user.getString("passWord"));
    userData.add(new passObj(p, u, k, y));
  }
} // sletData() end
