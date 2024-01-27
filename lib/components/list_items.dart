import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:testsound/components/item_info.dart';
import 'package:testsound/models/numbers_model.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item, required this.color});

  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color:color,
      child:   Row(
        children: [
          Container(
            color: const Color(0xffFEF6DB),
            child: Image.asset(item.image!,
            ),
          ),
          ItemInfo(item: item),

        ],
      ),
    );
  }
}




