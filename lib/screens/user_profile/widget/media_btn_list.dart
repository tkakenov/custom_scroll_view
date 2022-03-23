import 'package:flutter/material.dart';
import 'package:listview_app/screens/user_profile/widget/media_btn_item.dart';

class MediaBtnList extends StatefulWidget {
  const MediaBtnList({Key? key}) : super(key: key);

  @override
  State<MediaBtnList> createState() => _MediaBtnListState();
}

class _MediaBtnListState extends State<MediaBtnList> {
  final List<String> mediaBtnTitle = ["DELETE", "ADD"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            mediaBtnTitle.length,
            (index) => MediaBtnItem(
                  title: mediaBtnTitle[index],
                  index: selectedIndex,
                  currentIndex: index,
                  onPress: () {
                    selectedIndex = index;
                    setState(() {});
                  },
                )),
      ),
    );
  }
}
