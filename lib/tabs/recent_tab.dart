// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_nft/components/nft_card.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(
      imagePath: 'lib/images/1.jpg',
    );
  }
}
