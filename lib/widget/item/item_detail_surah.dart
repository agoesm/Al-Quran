import 'package:alquran/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemDetailSurah extends StatelessWidget {
  final String noAyat;
  final String teksArab;
  final String teksLatin;
  final String teksIndo;
  const ItemDetailSurah(
      {super.key,
      required this.noAyat,
      required this.teksArab,
      required this.teksLatin,
      required this.teksIndo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      noAyat,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: primaryColor, fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 250,
              child: Text(
                teksArab,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.end,
                softWrap: false,
                maxLines: 50,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: Text(
            teksLatin,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
            softWrap: false,
            maxLines: 50,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          teksIndo,
          style: Theme.of(context).textTheme.bodyMedium,
          softWrap: false,
          maxLines: 50,
          overflow: TextOverflow.ellipsis,
        ),
        // const SizedBox(height: 10),
        // Row(
        //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     const Icon(Icons.bookmark_outline),
        //     const SizedBox(width: 10),
        //     Flexible(
        //       child: Text(
        //         teksIndo,
        //         style: Theme.of(context).textTheme.bodyMedium,
        //         // textAlign: TextAlign.end,
        //         softWrap: false,
        //         maxLines: 50,
        //         overflow: TextOverflow.ellipsis,
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
