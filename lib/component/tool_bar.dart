import 'package:flutter/material.dart';
import 'package:gods_time/style/text_style.dart';

class ToolBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final List<Widget>? actions;
  const ToolBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
          backgroundColor: Colors.blue[900],
          elevation: 20,
          actions: actions,
          title: Text(title, style: AppText.header1,),
        );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(64);
}
