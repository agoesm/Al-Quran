import 'package:alquran/pages/home.dart';
import 'package:alquran/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    _storeOnBoardInfo() async {
      int isView = 0;
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setInt('onBoard', isView);
    }

    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: 370,
          margin: const EdgeInsets.symmetric(horizontal: 25),
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: primaryColor.withOpacity(0.8),
          ),
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/images/quran_table.svg',
                width: 250,
              ),
              const SizedBox(height: 10),
              Text(
                'Baca Al-Quran Setiap Waktu',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: kWhite),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  await _storeOnBoardInfo();
                  Get.to(() => const Home());
                },
                child: const Text('Get Start'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
