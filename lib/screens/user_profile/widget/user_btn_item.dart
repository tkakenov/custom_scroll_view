import 'package:flutter/material.dart';

class UserBtnItem extends StatelessWidget {
  const UserBtnItem({
    Key? key,
    required this.title,
    required this.index,
    required this.currentIndex,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final int index;
  final int currentIndex;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      child: Text(title),
      style: OutlinedButton.styleFrom(
        primary: index == currentIndex
            ? const Color(0xFF6200EE)
            : const Color(0xFF000000).withOpacity(0.5),
        backgroundColor: index == currentIndex
            ? const Color(0xFFF2E7FE)
            : const Color(0xFF000000).withOpacity(0.08),
        side: index == currentIndex
            ? const BorderSide(
                width: 2,
                color: Color(0xFFDBB2FF),
              )
            : BorderSide.none,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
