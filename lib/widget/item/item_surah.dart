import 'package:alquran/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemSurah extends StatelessWidget {
  final String noSurah;
  final String title;
  final String jumlAyat;
  final String turun;
  final String arabic;
  const ItemSurah({
    super.key,
    required this.noSurah,
    required this.title,
    required this.jumlAyat,
    required this.turun,
    required this.arabic,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Stack(
              children: [
                SvgPicture.asset(
                  'assets/icons/number.svg',
                  colorFilter:
                      const ColorFilter.mode(primaryColor, BlendMode.srcIn),
                ),
                SizedBox(
                  width: 36,
                  height: 36,
                  child: Center(
                    child: Text(
                      noSurah,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: primaryColor, fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 5),
                Text(
                  '$turun - $jumlAyat Ayat',
                  style: Theme.of(context).textTheme.bodyMedium,
                  softWrap: false,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
        Text(
          arabic,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: primaryColor, fontFamily: 'Thuluth'),
        ),
        // Container(),
      ],
    );
  }
}
