import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
            body: IndexedStack(
              index: _currentIndex,
              children: [
                HomePageNew(),
                SearchPage(),
                SelectDateScreen(),
                ProfilePage()
              ],
            ),
            bottomNavigationBar: SalomonBottomBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              selectedItemColor: AppColor.primaryColor,
              unselectedItemColor: AppColor.primaryColor.withOpacity(0.2),
              margin: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding, horizontal: kMinPadding),
              items: [
                SalomonBottomBarItem(
                  icon: const Icon(
                    FontAwesomeIcons.house,
                    size: kDefaultIconSize,
                  ),
                  title: const Text("HOME"),
                ),
                SalomonBottomBarItem(
                    icon: const Icon(
                      FontAwesomeIcons.search,
                      size: kDefaultIconSize,
                    ),
                    title: const Text("Search")),
                SalomonBottomBarItem(
                    icon: const Icon(
                      FontAwesomeIcons.briefcase,
                      size: kDefaultIconSize,
                    ),
                    title: const Text("BOOKING")),
                SalomonBottomBarItem(
                    icon: const Icon(
                      FontAwesomeIcons.solidUser,
                      size: kDefaultIconSize,
                    ),
                    title: const Text("PROFILE"))
              ],
            ),
          )),
    );
  }
}