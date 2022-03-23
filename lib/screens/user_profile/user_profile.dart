import 'package:flutter/material.dart';
import 'package:listview_app/resources/resources.dart';
import 'package:listview_app/screens/user_profile/widget/media_btn_list.dart';
import 'package:listview_app/screens/user_profile/widget/user_btn_list.dart';
import 'package:listview_app/screens/user_profile/widget/user_friends.dart';
import 'package:listview_app/screens/user_profile/widget/user_info.dart';
import 'package:listview_app/screens/user_profile/widget/user_my_media.dart';

import '../../models/user.dart';

class UserProfile extends StatelessWidget {
  UserProfile({Key? key}) : super(key: key);
  final List<User> userList = User.getUserList();
  final List<String> images = [
    UserImages.rect6,
    UserImages.rect7,
    UserImages.rect8,
    UserImages.rect9,
    UserImages.rect10,
    UserImages.rect11,
    UserImages.rect12,
    UserImages.rect13,
    UserImages.rect14
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120,
            pinned: true,
            floating: true,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            forceElevated: true,
            shadowColor: Colors.grey.withOpacity(0.5),
            elevation: 2,
            backgroundColor: Colors.white,
            centerTitle: false,
            title: const Text(
              "Profile",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SliverToBoxAdapter(
            child: UserInfo(),
          ),
          const SliverToBoxAdapter(
            child: UserBtnList(),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 16,
                bottom: 5,
              ),
              child: Text(
                "Friends",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              ...List.generate(
                userList.length,
                (index) => UserFriends(
                    name: userList[index].name,
                    position: userList[index].position,
                    image: userList[index].image),
              ),
            ]),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 25,
            ),
            sliver: SliverToBoxAdapter(
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  side: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0.12),
                  ),
                  primary: Colors.black.withOpacity(0.87),
                  fixedSize: const Size(560, 36),
                ),
                onPressed: () {},
                child: const Text("ADD FRIEND  +"),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              delegate: SliverChildListDelegate([
                ...List.generate(
                  images.length,
                  (index) => UserMyMedia(image: images[index]),
                ),
              ]),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 13,
                crossAxisSpacing: 17,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: MediaBtnList(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 0, bottom: 0),
              child: Divider(
                indent: 156,
                endIndent: 156,
                height: 50,
                thickness: 3,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
