import 'package:alquran/pages/about.dart';
import 'package:alquran/pages/bookmark.dart';
import 'package:alquran/pages/juz.dart';
import 'package:alquran/pages/surah.dart';
import 'package:alquran/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Al-Quran',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: primaryColor),
        ),
        centerTitle: false,
        // backgroundColor: primaryColor,
        // elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: SvgPicture.asset('assets/icons/menu.svg'),
              onPressed: () => Scaffold.of(context).openDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: kWhite,
        child: ListView(
          children: [
            ListTile(
              title: const Text('Setting'),
              leading: const Icon(Icons.settings),
              onTap: () {},
            ),
            ListTile(
              title: const Text('About App'),
              leading: const Icon(Icons.info_outline),
              onTap: () => {
                Get.to(() => const About())
                    ?.then((value) => Navigator.pop(context)),
              },
            ),
          ],
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 25),
          child: NestedScrollView(
            headerSliverBuilder: (context, uu) => [
              SliverToBoxAdapter(
                child: _banner(),
              ),
              SliverAppBar(
                pinned: true,
                elevation: 0,
                backgroundColor: kWhite,
                automaticallyImplyLeading: false,
                shape: Border(
                  bottom: BorderSide(
                    width: 3,
                    color: const Color(0xFFAAAAAA).withOpacity(.1),
                  ),
                ),
                bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(-8),
                  child: TabBar(
                    // isScrollable: true,
                    dividerColor: kWhite,
                    tabs: [
                      Tab(child: Text('Surah')),
                      Tab(child: Text('Juz')),
                      Tab(child: Text('Bookmark')),
                    ],
                  ),
                ),
              )
            ],
            body: const TabBarView(
              children: [
                Surah(),
                Juz(),
                Bookmark(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding _banner() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF1f7a68), Color(0xFF87D1A4)],
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Last Read',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: kWhite, letterSpacing: 1.5),
                    ),
                    const SizedBox(height: 50),
                    Text(
                      'Al-Baqarah',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: kWhite),
                    ),
                    Text(
                      'Ayat 56',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: kWhite.withOpacity(0.8)),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 0,
                bottom: -10,
                child: SvgPicture.asset('assets/images/quran_table.svg'),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
