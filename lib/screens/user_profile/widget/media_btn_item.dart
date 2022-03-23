import 'package:flutter/material.dart';

class MediaBtnItem extends StatelessWidget {
  const MediaBtnItem({
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
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        side: BorderSide(
          width: 1,
          color: Colors.black.withOpacity(0.12),
        ),
        backgroundColor:
            index == currentIndex ? const Color(0xFF6200EE) : Colors.white,
        primary: index == currentIndex
            ? const Color(0xFFFFFFFF)
            : const Color(0xFF6200EE),
        fixedSize: const Size(166, 36),
      ),
      onPressed: onPress,
      child: Text(title),
    );
  }
}
