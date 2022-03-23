import 'package:flutter/material.dart';

class UserFriends extends StatelessWidget {
  const UserFriends(
      {Key? key,
      required this.name,
      required this.position,
      required this.image})
      : super(key: key);
  final String name;
  final String position;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(image),
            ),
            title: Text(
              name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.87),
              ),
            ),
            subtitle: Text(
              position,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.60),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.close,
                color: Colors.red,
              ),
            ),
          ),
        ),
        const Divider(
          indent: 71,
        ),
      ],
    );
  }
}
