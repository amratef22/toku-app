import 'package:flutter/material.dart';
import 'package:testsound/Screens/colors_page.dart';
import 'package:testsound/Screens/family_page.dart';
import 'package:testsound/Screens/numbers_page.dart';
import 'package:testsound/Screens/phrases_page.dart';
import 'package:testsound/components/category_item.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Toku',

        ),
      ),
      body: Column(
        children: [
          Category(
            ontab: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return const NumbersPage();
                  }
                  ),
              );
            },
            text: 'Numbers',
            color: Colors.orange,
          ),
          Category(
            ontab: ()
            {
              Navigator.push(context,
                MaterialPageRoute(builder: (context){
                  return const FamilyPage();
                }
                ),
              );
            },
            text: 'Family Members',
            color: Colors.green,
          ),
          Category(
            ontab: ()
            {
              Navigator.push(context,
                MaterialPageRoute(builder: (context){
                  return const ColorsPage();
                }
                ),
              );
            },
            text: 'Colors',
            color: Colors.purple,
          ),
          Category(
            ontab: ()
            {
              Navigator.push(context,
                MaterialPageRoute(builder: (context){
                  return const PhrasesPage();
                }
                ),
              );
            },
            text: 'Phrases',
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
