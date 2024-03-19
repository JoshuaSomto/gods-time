

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gods_time/component/tool_bar.dart';
import 'package:gods_time/style/text_style.dart';

enum ProfileMenu {
  edith,
  Logout
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: 'Profile', actions: [
        PopupMenuButton<ProfileMenu>(
          onSelected: (value) {
            switch (value) {
              case ProfileMenu.edith:
              Navigator.of(context).pushNamed('/edith_profile');
             break;
             case ProfileMenu.Logout:
             print('Logout');
             break;
              default:
            }
          },
          itemBuilder: (context) {
          
          return [
            PopupMenuItem(child: Text('Edith',),value: ProfileMenu.edith,),
            PopupMenuItem(child: Text('Logout'),value: ProfileMenu.Logout,)
          ];
        },)
      ],),
      backgroundColor: Colors.blue[900] ,
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Image.asset(
              'assets/temp/baby.jpeg', 
              width: 90,
              height: 90,
            ),
          ),
          Text(
            'Christopher joshua',
            style: AppText.header2,
          ),
          SizedBox(height: 12),
          Text(
            'Madagascar',
            style: AppText.subtitle3,
          ),
          SizedBox(height: 12),
          Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    '500',
                    style: AppText.header2,
                  ),
                  Text('Folloers')
                ],
              ),
                            Column(
                children: [
                  Text(
                    '100',
                    style: AppText.header2,
                  ),
                  Text('post')
                ],
              ),              Column(
                children: [
                  Text(
                    '200',
                    style: AppText.header2,
                  ),
                  Text('Following')
                ],
              )
            ],
          ),
          Divider(thickness: 2,) 
        ],
      ),
    );
  }
}
