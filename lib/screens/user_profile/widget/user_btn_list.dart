import 'package:flutter/material.dart';
import 'package:listview_app/screens/user_profile/widget/user_btn_item.dart';

class UserBtnList extends StatefulWidget {
  const UserBtnList({Key? key}) : super(key: key);

  @override
  State<UserBtnList> createState() => _UserBtnListState();
}

class _UserBtnListState extends State<UserBtnList> {
  List<String> level = [
    "Black",
    "Bold",
    "Medium",
    "Regular",
    "Light",
    "Others",
    "Black",
    "Bold",
    "Medium",
    "Regular",
    "Light",
    "Others"
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text("Select type",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ).copyWith(height: 1.5)),
        ),
        const SizedBox(
          height: 14,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            height: 32,
            child: ListView.separated(
              itemCount: level.length,
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => UserBtnItem(
                title: level[index],
                index: index,
                currentIndex: selectedIndex,
                onPress: () {
                  selectedIndex = index;
                  setState(() {});
                },
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Divider()
      ],
    );
  }
}
