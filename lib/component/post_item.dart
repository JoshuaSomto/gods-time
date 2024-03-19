import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gods_time/style/text_style.dart';

class PostItem extends StatelessWidget {
  final String  client;
  const PostItem({super.key, required this.client});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/managing.jpeg',
                height: 40,
                width: 50,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                client,

                style: AppText.subtitle3,
              ),
            ],
          ),
          SizedBox(height: 12),
          Image.asset('assets/temp/baby.jpeg', 
          width: MediaQuery.of(context).size.width,
           fit: BoxFit.cover),
          Text(
            'the sun is a daily reminder that we too can rise from the darkness that we too can shine in our own light🥰❤️',
            style: AppText.subtitle3,
          ),
        ],
      ),
    );
  }
}
