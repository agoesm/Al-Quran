import 'package:alquran/data/controller/surah_controller.dart';
import 'package:alquran/pages/detail_surah.dart';
import 'package:alquran/utils/constants/colors.dart';
import 'package:alquran/widget/common/no_internet.dart';
import 'package:alquran/widget/item/item_surah.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class Surah extends StatelessWidget {
  const Surah({super.key});

  @override
  Widget build(BuildContext context) {
    SurahController surahController = Get.put(SurahController());
    // print(surahController.isLoading.value);

    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Obx(
        () => surahController.isInternetConnect.value
            ? surahController.isLoading.value
                ? _loader()
                : _listSurah(surahController)
            : NoInternet(
                onPress: () async {
                  if (await InternetConnectionChecker().hasConnection == true) {
                    surahController.getSurah();
                  } else {
                    Get.snackbar(
                      'No Internet',
                      'Please check your Connection',
                      colorText: kWhite,
                      backgroundColor: primaryColor,
                    );
                  }
                },
              ),
      ),
    );
  }

  Center _loader() => const Center(child: CircularProgressIndicator());

  Widget _listSurah(SurahController surahController) {
    return RefreshIndicator(
      color: primaryColor,
      onRefresh: () => surahController.getSurah(),
      child: ListView.separated(
        physics: const BouncingScrollPhysics(), // for android
        separatorBuilder: (context, index) => const Divider(
          thickness: 0.4,
          indent: 15,
          endIndent: 15,
        ),
        itemCount: surahController.surah.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () => Get.to(() => DetailSurah(index: i),
                transition: Transition.cupertino),
            splashColor: primaryColor.withOpacity(0.1),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ItemSurah(
                // noSurah: '${i + 1}',
                noSurah: surahController.surah[i].nomor.toString(),
                title: surahController.surah[i].namaLatin,
                jumlAyat: surahController.surah[i].jumlahAyat.toString(),
                turun: surahController.surah[i].tempatTurun,
                arabic: surahController.surah[i].nama,
              ),
            ),
          );
        },
      ),
    );
  }
}
