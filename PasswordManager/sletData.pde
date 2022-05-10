void sletData(int n) {
  users.remove(n);
  saveJSONArray(users, "ytgefheu827848089urhfudj8e7234eujds/ataDssaP.json");
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
}
