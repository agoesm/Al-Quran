import 'package:alquran/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarDefault extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color bgColor;
  const AppBarDefault({
    super.key,
    required this.title,
    required this.bgColor,
  });

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: bgColor,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: kWhite,
        // onPressed: () => Navigator.pop(context),
        onPressed: () => Get.back(),
      ),
    );
  }
}
