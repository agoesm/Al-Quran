import 'package:alquran/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/qarem.svg',
              width: 250,
              colorFilter: const ColorFilter.mode(kWhite, BlendMode.srcIn),
            ),
            const SizedBox(height: 30),
            Text(
              'Al Quran Apps',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: kWhite),
            ),
            const SizedBox(height: 40),
            Text(
              'Created by',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: kWhite.withOpacity(.7)),
            ),
            Text(
              'Muhammad Agus Miftah',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: kWhite.withOpacity(.7)),
            ),
          ],
        ),
      ),
    );
  }
}
