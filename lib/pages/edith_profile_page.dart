import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gods_time/component/app_text_field.dart';
import 'package:gods_time/component/profile_avatar.dart';
import 'package:gods_time/component/tool_bar.dart';
import 'package:gods_time/config/app_string.dart';

enum Gender { none, male, female, others }

class EdithProfilePage extends StatefulWidget {
  EdithProfilePage({super.key});

  @override
  State<EdithProfilePage> createState() => _EdithProfilePageState();
}

class _EdithProfilePageState extends State<EdithProfilePage> {
  var gender = Gender.none;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: ToolBar(title: 'Edith Profile'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
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
                      padding: const EdgeInsets.only(
                        bottom: 20,
                        top: 30,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(4),
                        child: Icon(
                          Icons.edit,
                          size: 20,
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
              SizedBox(
                height: 20,
              ),
              AppTextField(hint: AppString.firstName),
              SizedBox(
                height: 10,
              ),
              AppTextField(hint: AppString.lastName),
              SizedBox(
                height: 10,
              ),
              AppTextField(hint: AppString.phoneNumber),
              SizedBox(
                height: 10,
              ),
              AppTextField(hint: AppString.location),
              SizedBox(
                height: 10,
              ),
              AppTextField(hint: AppString.birthday),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppString.gender),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            title: Text(AppString.male),
                            value: Gender.male,
                            groupValue: gender,
                            contentPadding: EdgeInsets.zero,
                            onChanged: (Value) {
                              setState(() {
                                gender = Gender.male;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: Text(AppString.female),
                            value: Gender.female,
                            contentPadding: EdgeInsets.zero,
                            groupValue: gender,
                            onChanged: (Value) {
                              setState(
                                () {
                                  gender = Gender.female;
                                },
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: Text(AppString.others),
                            value: Gender.others,
                            contentPadding: EdgeInsets.zero,
                            groupValue: gender,
                            onChanged: (Value) {
                              setState(() {
                                gender = Gender.others;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
