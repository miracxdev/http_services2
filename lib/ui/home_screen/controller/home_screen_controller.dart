import 'package:http_services2/app/models/response/home_response.dart';
import 'package:http_services2/app/services/http_services.dart';

class HomeController {
  //Observable
  List<Post>? homeResponseList = [];

  HttpServices httpServices = HttpServices();

  getData() async {

    homeResponseList = await httpServices.getHomeData();
  }
  
}