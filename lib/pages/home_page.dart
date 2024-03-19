import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:gods_time/component/post_item.dart';
import 'package:gods_time/component/tool_bar.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  List<String> people = [];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    amountOfPeopleInTheWorld();
    return Scaffold(
        backgroundColor: Colors.blue[900],
        appBar: ToolBar(title: 'g matter length', actions: [

          // ignore: deprecated_member_use
          IconButton(onPressed: () {}, icon: SvgPicture.asset('assets/svg/carbon_location.svg', height: 25, width: 25, color: Colors.white,),)
        ],
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return PostItem(
              client: people[index],
            );
          }, separatorBuilder: (BuildContext context, int index) { 
            return SizedBox(
              height: 20,
            );
          }, itemCount: people.length,
        ));
  }

  amountOfPeopleInTheWorld() {
    for (var i = 0; i < 100; i++) {
      people.add('User number $i');
    }
  }
}
