import 'dart:convert';
import 'package:dartz/dartz.dart';
import './status_request.dart';
import '../functions/check_internet.dart';
import 'package:http/http.dart' as http;

String _basicAuth =
    'Basic ${base64Encode(utf8.encode('SamerAfeef:VisualSoft'))}';
Map<String, String> _myHeaders = {'authorization': _basicAuth};

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkUrl),
            body: data, headers: _myHeaders);
        // print(response.statusCode);

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          // print(responseBody);

          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (e) {
      //print(e);
      return const Left(StatusRequest.serverException);
    }
  }
}
