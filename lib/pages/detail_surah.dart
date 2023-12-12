import 'package:alquran/data/controller/ayat_controller.dart';
import 'package:alquran/data/controller/surah_controller.dart';
import 'package:alquran/widget/common/no_internet.dart';
import 'package:alquran/widget/item/item_detail_surah.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DetailSurah extends StatelessWidget {
  final int index;
  const DetailSurah({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    SurahController surahController = Get.find<SurahController>();

    var idSurah = surahController.surah[index].nomor;
    AyatController ayatController = Get.put(AyatController(idSurah));

    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      surahController.surah[index].nama,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(fontFamily: 'Thuluth'),
                      softWrap: false,
                      textAlign: TextAlign.center,
                      maxLines: 50,
                      overflow: TextOverflow.ellipsis,
                    ),
                    idSurah == 1
                        ? const SizedBox(height: 30)
                        : Container(
                            margin: const EdgeInsets.fromLTRB(0, 15, 0, 30),
                            child:
                                SvgPicture.asset('assets/images/bismilah.svg'),
                          ),
                  ],
                ),
              ),
            ),
          ],
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Obx(
              () => ayatController.isInternetConnect.value
                  ? ayatController.isLoading.value
                      ? const Center(child: CircularProgressIndicator())
                      : ListView.separated(
                          physics: const BouncingScrollPhysics(), // for android
                          separatorBuilder: (context, index) =>
                              const Divider(thickness: 0.7),
                          itemCount: ayatController.ayat.length,
                          itemBuilder: (context, i) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: ItemDetailSurah(
                                noAyat:
                                    ayatController.ayat[i].nomorAyat.toString(),
                                teksArab: ayatController.ayat[i].teksArab,
                                teksLatin: ayatController.ayat[i].teksLatin,
                                teksIndo: ayatController.ayat[i].teksIndonesia,
                              ),
                            );
                          },
                        )
                  : const NoInternet(),
            ),
          ),
        ),
      ),
    );
  }
}
