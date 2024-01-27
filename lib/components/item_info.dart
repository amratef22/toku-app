import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:testsound/models/numbers_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children:
        [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(item.jpName,style: const TextStyle(color: Colors.white,fontSize: 24),),
                Text(item.enName,style: const TextStyle(color: Colors.white,fontSize: 24),),

              ],
            ),
          ),
          const Spacer(flex: 1,),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: ()
              {
                final player =AudioPlayer();
                player.play(AssetSource(item.sound));
              },
              icon:const Icon(
                Icons.play_arrow,
                size: 28,
                color: Colors.white,
              ) ,
            ),
          ),
        ],
      ),
    );
  }
}