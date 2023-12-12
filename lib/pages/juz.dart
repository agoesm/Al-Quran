// import 'package:alquran/data/controller/surah_controller.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class Juz extends StatelessWidget {
  const Juz({super.key});

  @override
  Widget build(BuildContext context) {
    // SurahController surahController = Get.put(SurahController());

    // return RefreshIndicator(
    //   color: primaryColor,
    //   onRefresh: () => surahController.getSurah(),
    //   child: ListView.builder(
    //     physics: const BouncingScrollPhysics(), // for android
    //     // separatorBuilder: (context, index) => const Divider(
    //     //   thickness: 0.4,
    //     //   indent: 15,
    //     //   endIndent: 15,
    //     // ),
    //     itemCount: surahController.surah.length,
    //     itemBuilder: (context, index) {
    //       return InkWell(
    //         onTap: () {},
    //         splashColor: primaryColor.withOpacity(0.1),
    //         child: Padding(
    //           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    //           child: ItemDetailSurah(
    //             noAyat: surahController.surah[index].nomor.toString(),
    //             teksArab: surahController.surah[index].namaLatin,
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );

    //
    return const Center(
      child: Text('juz'),
    );
  }
}
