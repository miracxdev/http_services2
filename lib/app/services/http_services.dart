import 'package:http/http.dart' as http;
import 'package:http_services2/app/models/response/home_response.dart';

class HttpServices {

  

  Future<List<Post>?> getHomeData() async {
    var url = Uri.parse("https://dummyjson.com/posts");
    var response = await http.get(url);

    print('Response body: ${response.body}');

    return homeResponseFromJson(response.body).posts;
  }
}
