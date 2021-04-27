import 'dart:convert';
import 'package:http/http.dart' as http;
const apiKey ='0cbcfe06d566cf4139572c257c4359a6';

class Network {
  Network(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}

