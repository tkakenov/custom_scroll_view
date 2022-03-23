import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          Stack(
            children: [
              const CircleAvatar(
                radius: 59,
                backgroundImage: AssetImage("assets/images/Image.png"),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: const Color(0xFF6200EE),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.add),
                      color: Colors.white,
                      iconSize: 22,
                      splashRadius: 22,
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "Tiana Rosser",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF151522),
            ).copyWith(
              height: 1.5,
            ),
          ),
          Text(
            "Developer",
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFF666666),
            ).copyWith(height: 1.4),
          ),
          const SizedBox(
            height: 24,
          ),
          const Divider(),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
