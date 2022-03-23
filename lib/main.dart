import 'package:flutter/material.dart';
import 'package:listview_app/screens/user_profile/user_profile.dart';

void main() => runApp(const UserInfoList());

class UserInfoList extends StatelessWidget {
  const UserInfoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserProfile(),
    );
  }
}
