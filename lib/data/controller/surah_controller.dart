import 'package:alquran/data/models/surah_model.dart';
import 'package:alquran/service/dio_service.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class SurahController extends GetxController {
  RxList<SurahModel> surah = RxList();
  RxBool isLoading = true.obs;
  RxBool isInternetConnect = true.obs;

  var url = "https://equran.id/api/v2/surat";

  getSurah() async {
    var response = await DioService().getMethod(url);

    try {
      if (response.statusCode == 200) {
        response.data["data"].forEach((element) {
          surah.add(SurahModel.fromJson(element));
        });
        // print(response.data["data"]["ayat"]);
      }
    } finally {
      isLoading(false);
    }
  }

  isInternetConnection() async {
    isInternetConnect.value = await InternetConnectionChecker().hasConnection;
  }

  @override
  void onInit() {
    isInternetConnection();
    getSurah();

    super.onInit();
  }
}
