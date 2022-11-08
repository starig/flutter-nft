// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_nft/components/my_bottombar.dart';
import 'package:flutter_nft/theme/glass_box.dart';

import '../components/my_appbar.dart';
import '../components/my_tabbar.dart';
import '../tabs/recent_tab.dart';
import '../tabs/top_bar.dart';
import '../tabs/trending_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _searchButtonTapped() {

  }

  List tabOptions = const [
    ['Recent', RecentTab()],
    ['Trending', TrendingTab()],
    ['Top', TopTab()]
  ];

  int _currentBottomIndex = 0;
  void _handleBottomIndexChange (int? index) {
    setState(() {
      _currentBottomIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        backgroundColor: Colors.black12,
        extendBody: true,
        bottomNavigationBar: GlassBox(
          child: MyBottomBar(
            index: _currentBottomIndex,
            onTap: _handleBottomIndexChange,
          ),
        ),
        body: ListView(
          children: [
            MyAppBar(
              title: 'Explore Collections',
              onSearchTap: _searchButtonTapped,
            ),
            SizedBox(
              height: 700,
              child: MyTabBar(
                tabOptions: tabOptions,
              ),
            )
          ],
        ),
      ),
    );
  }
}
