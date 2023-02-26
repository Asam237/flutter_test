import 'dart:convert';
import 'dart:developer';
import 'package:ejara_flutter_test/api/response.api.dart';
import 'package:http/http.dart' as http;

class ServicesApi {
  final String _baseUrl = 'https://testbox-nellys-coin.ejaraapis.xyz/api/v1/';

  login(data, apiUrl) async {
    var fulUrl = Uri.parse(_baseUrl + apiUrl);
    return await http.post(fulUrl, body: jsonEncode(data), headers: {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'api-key': 'K[bb@c*heYNTOd[UVBmLevq0(',
      'client-id': '02d5f007e2',
    }).then((data) async {
      if (data.statusCode == 200) {
        final jsonData = jsonDecode(data.body);
        var datas = jsonData;
        return ResponseApi<Map<String, dynamic>>(data: datas);
      } else if (data.statusCode == 400) {
        return ResponseApi<Map<String, dynamic>>(
            error: true, errorMessage: "Incorrect email or password");
      }
      return ResponseApi<Map<String, dynamic>>(
          error: true, errorMessage: "An error has occured.");
    }).catchError((error) {
      log(error.toString());
      return ResponseApi<Map<String, dynamic>>(
          error: true,
          errorMessage: "An error has occured ${error.toString()}");
    });
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'api-key': 'K[bb@c*heYNTOd[UVBmLevq0(',
        'client-id': '02d5f007e2',
      };
}
