import 'package:flutter/material.dart';
import 'package:testsound/components/phrase_item.dart';
import 'package:testsound/models/numbers_model.dart';


class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> family =const
  [
    ItemModel(
      enName: 'one',
      jpName: 'ich',
      image: 'assets/images/family_members/family_father.png',
      sound: 'assets/sounds/numbers/number_eight_sound.mp3',
    ),
    ItemModel(
        sound: 'assets/sounds/numbers/number_eight_sound.mp3',
        enName: 'two',
        jpName: 'Ni ',
        image: 'assets/images/family_members/family_mother.png'
    ),
    ItemModel(
        sound: 'assets/sounds/numbers/number_eight_sound.mp3',
        enName: 'three',
        jpName: 'San',
        image: 'assets/images/numbers/number_three.png'
    ),
    ItemModel(
        sound: 'assets/sounds/numbers/number_eight_sound.mp3',
        enName: 'four',
        jpName: 'Yon ',
        image: 'assets/images/numbers/number_four.png'
    ),
    ItemModel(
        sound: 'assets/sounds/numbers/number_eight_sound.mp3',
        enName: 'five',
        jpName: 'Go ',
        image: 'assets/images/numbers/number_five.png'
    ),
    ItemModel(
        sound: 'assets/sounds/numbers/number_eight_sound.mp3',
        enName: 'six',
        jpName: 'Roku ',
        image: 'assets/images/numbers/number_six.png'
    ),
    ItemModel(
        sound: 'assets/sounds/numbers/number_eight_sound.mp3',
        enName: 'seven',
        jpName: 'Nana ',
        image: 'assets/images/numbers/number_seven.png'
    ),
    ItemModel(
        sound: 'assets/sounds/numbers/number_eight_sound.mp3',
        enName: 'eight',
        jpName: 'Hachi ',
        image: 'assets/images/numbers/number_eight.png'
    ),
    ItemModel(
        sound: 'assets/sounds/numbers/number_eight_sound.mp3',
        enName: 'nine',
        jpName: 'Ku',
        image: 'assets/images/numbers/number_nine.png'
    ),
    ItemModel(
        sound: 'assets/sounds/numbers/number_eight_sound.mp3',
        enName: 'ten',
        jpName: 'Ju',
        image: 'assets/images/numbers/number_ten.png'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text('Phrases',
        ),
      ),
      body:ListView.builder(
        itemCount:family.length ,
        itemBuilder: ( context,index)
        {
          return PhrasesItem(
            item: family[index],
            color: Colors.lightBlueAccent,
          );
        },
      ) ,

    );
  }
}
//دي بتساوي االيست فيو دوت بيلدير
// List<Widget> getList (List<Number> numbers)
// {
//   List<Item> itemsList = [];
//   for(int i=0; i<numbers.length; i++)
//   {
//     itemsList.add(Item(number: numbers[i]));
//   }
//   return itemsList;
// }


