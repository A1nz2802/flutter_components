import 'package:fl_components/widgets/widgets.dart';

import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://images.pexels.com/photos/1619317/pexels-photo-1619317.jpeg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://i.natgeofe.com/n/2a832501-483e-422f-985c-0e93757b7d84/6_4x3.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg',
            name: 'Hermoso landscape :D',
          )
        ],
      ),
    );
  }
}
