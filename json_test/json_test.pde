String[] pas = { "1245435", "kode", "pasword" };
String[] user = { "john", "per", "kris" };


JSONArray values;

void setup() {

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
