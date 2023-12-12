import 'package:alquran/data/models/ayat_model.dart';
import 'package:alquran/service/dio_service.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class AyatController extends GetxController {
  late int idSurah;
  AyatController(this.idSurah);

  RxList<AyatModel> ayat = RxList();
  RxBool isLoading = true.obs;
  RxBool isInternetConnect = true.obs;

  getAyat(idSurah) async {
    var url = "https://equran.id/api/v2/surat/$idSurah";
    var response = await DioService().getMethod(url);

    try {
      if (response.statusCode == 200) {
        response.data["data"]["ayat"].forEach((element) {
          ayat.add(AyatModel.fromJson(element));
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
    getAyat(idSurah);
    super.onInit();
  }
}
