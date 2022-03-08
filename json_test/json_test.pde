void setup() {
  jsonSave();
  delay(1000);
  jsonLoad();
}

void jsonSave() {
  String[] pas = { "1245435", "kode", "pasword" };
  String[] user = { "john", "per", "kris" };


  JSONArray values;

    values = new JSONArray();

    for (int i = 0; i < pas.length; i++) {

      JSONObject kodeord = new JSONObject();

      kodeord.setInt("id", i);
      kodeord.setString("paswords", pas[i]);
      kodeord.setString("user", user[i]);

      values.setJSONObject(i, kodeord);
    }

    saveJSONArray(values, "data/data.json");
  }

  void jsonLoad() {
    JSONArray values;
    
    values = loadJSONArray("data/data.json");
    for (int i = 0; i < values.size(); i++) {
      JSONObject users = values.getJSONObject(i);
      
      int id = users.getInt("id");
      String pass = users.getString("paswords");
      String name = users.getString("user");
      println("id: " + id + " pass: " + pass + " name: " + name);
    }
  }
