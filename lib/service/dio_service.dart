import 'package:dio/dio.dart';

class DioService {
  Future<dynamic> getMethod(String url) async {
    Dio dio = Dio();

    // return await dio
    //     .get(url,
    //         options: Options(responseType: ResponseType.json, method: 'GET'))
    //     .then((response) {
    //   // log(response.toString());
    //   return response;
    // });

    try {
      return await dio
          .get(url,
              options: Options(responseType: ResponseType.json, method: 'GET'))
          .then((response) {
        // log(response.toString());
        return response;
      });
    } on DioException catch (e) {
      throw Exception(e.message);
    }
  }
}
