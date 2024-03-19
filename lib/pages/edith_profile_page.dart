import 'package:flutter/material.dart';
import 'package:gods_time/component/app_text_field.dart';
import 'package:gods_time/component/profile_avatar.dart';
import 'package:gods_time/component/tool_bar.dart';

class EdithProfilePage extends StatelessWidget {
  const EdithProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: ToolBar(title: 'Edith Profile'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProfileAvatar(
                    size: 150,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  top: 90,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20, top: 30,),
                    child: Container(
                      padding: EdgeInsets.all(4),
                      child: Icon(
                        Icons.edit, size: 20,
                        color: Colors.black,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            AppTextField(hint: 'First Name'),
            SizedBox(
              height: 10,
            ),
            AppTextField(hint: 'Last Name'),
            SizedBox(
              height: 10,
            ),
            AppTextField(hint: 'Phone Number'),
            SizedBox(
              height: 10,
            ),
            AppTextField(hint: 'Location'),
          ],
        ),
      ),
    );
  }
}
