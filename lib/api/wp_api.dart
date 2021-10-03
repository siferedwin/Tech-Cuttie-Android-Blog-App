import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List> fetchWpPosts() async {
  final response = await http.get(Uri.parse('https://techcuttie.com/index.php/wp-json/wp/v2/posts'),
      headers: {"Accept": "application/json"});
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}
