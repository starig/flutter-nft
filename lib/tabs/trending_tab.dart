// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../components/nft_card.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(
      imagePath: 'lib/images/3.jpg',
    );
  }
}