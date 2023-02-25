import 'dart:convert';
import 'dart:developer';
import 'package:ejara_flutter_test/api/response.api.dart';
import 'package:http/http.dart' as http;

class ServicesApi {
  final String _baseUrl = 'https://api-dev.itrade.digital/';
  final String _apiKey = 'K[bb@c*heYNTOd[UVBmLevq0(';
  final String _clientID = '02d5f007e2';
  final String _appVersion = '3.1.5';
  final String _appPlateform = 'android-test';
  final String _client = 'mobile';
  final String _acceptLanguage = 'en';

  login(data, apiUrl) async {
    var fulUrl = Uri.parse(_baseUrl + apiUrl);
    return await http
        .post(
      fulUrl,
      body: jsonEncode(data),
      headers: _setHeaders(),
    )
        .then((data) async {
      if (data.statusCode == 200) {
        final jsonData = jsonDecode(data.body);
        var datas = jsonData;
        return ResponseApi<Map<String, dynamic>>(data: datas);
      } else if (data.statusCode == 204) {
        return ResponseApi<Map<String, dynamic>>(
            error: true, errorMessage: "Email ou mot de passe incorrect");
      }
      return ResponseApi<Map<String, dynamic>>(
          error: true, errorMessage: "Une erreur est survenue. REESAYER");
    }).catchError((error) {
      log(error.toString());
      return ResponseApi<Map<String, dynamic>>(
          error: true,
          errorMessage: "Une erreur est survenue ${error.toString()}");
    });
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        'api-key': {_apiKey},
        'client-id': {_clientID},
        'app-version': {_appVersion},
        'app-platform': {_appPlateform},
        'client': {_client},
        'Accept-language': {_acceptLanguage}
      };
}
