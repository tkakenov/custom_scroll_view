import 'package:flutter/material.dart';

class UserMyMedia extends StatelessWidget {
  const UserMyMedia({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(image),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.white,
              ),
              color: const Color(0xFFCF6679),
              borderRadius: BorderRadius.circular(100),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              iconSize: 18,
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(Icons.close),
            ),
          ),
        )
      ],
    );
  }
}
