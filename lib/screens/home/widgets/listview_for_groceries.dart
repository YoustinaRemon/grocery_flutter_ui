import 'package:flutter/material.dart';
import 'package:grocery/screens/home/widgets/row_card.dart';

class ListviewForGroceries extends StatelessWidget {
  const ListviewForGroceries({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 105,
      child: ListView.separated(
        itemBuilder: (context, index) => RowCard(),
        separatorBuilder: (context, index) => (SizedBox(width: 14)),
        itemCount: 3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
