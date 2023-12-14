import 'package:flutter/material.dart';

class NoInternet extends StatelessWidget {
  final Function() onPress;
  const NoInternet({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 230,
            child: Text(
              'Kamu Sedang Offline Periksa Koneksi Internetmu',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: onPress,
            child: const Text('Try Again'),
          )
        ],
      ),
    );
  }
}
