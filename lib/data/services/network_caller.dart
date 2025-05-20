import 'package:http/http.dart';
import 'package:task_manger/data/models/network_response.dart';

class NetworkCaller {
  Future<NetworkResponse> getRequest(String url) async {
    try{
      Uri uri = Uri.parse(url);
      final Response response = await get(uri);
      if (response.statusCode == 200) {

      } else {

      }
    } catch(e){

    }
  }
}
