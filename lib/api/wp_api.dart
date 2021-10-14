import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List> fetchWpPosts() async {
  final response = await http.get(
      Uri.parse(
          'https://techcuttie.com/index.php/wp-json/wp/v2/posts?per_page=100'),
      headers: {"Accept": "application/json"});
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}

Future<List> fetchWpFags() async {
  final response = await http.get(
      Uri.parse(
          'https://techcuttie.com/index.php/wp-json/wp/v2/helpie_faq?per_page=100'),
      headers: {"Accept": "application/json"});
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}

Future<List> fetchWpCategories() async {
  final response = await http.get(
      Uri.parse(
          'https://techcuttie.com/index.php/wp-json/wp/v2/categories?per_page=100'),
      headers: {"Accept": "application/json"});
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}

Future fetchWpPostImageUrl(href) async {
  final response =
      await http.get(href, headers: {"Accept": "application/json"});
  var convertDatatoJson = jsonDecode(response.body);
  return convertDatatoJson;
}
