import 'package:flutter/material.dart';
import 'package:iqua_web/component/launch_browswer.dart';
import 'package:iqua_web/home/contact_us_kr.dart';

class DrawerKR extends StatelessWidget {
  const DrawerKR({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.purple[50],
                backgroundImage: const AssetImage('images/icon.png')),
            accountName: const Text(""),
            accountEmail: const Text(""),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
            ),
          ),
          ListTile(
            title: const Text("홈"),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            title: const Text("회사소개"),
            onTap: () {
              Navigator.pushNamed(context, '/company');
            },
          ),
          const ListTile(
            title: Text("취업"),
          ),
          const ListTile(
            title: Text("대학"),
          ),
          const ListTile(
            title: Text("커뮤니티"),
          ),
          ListTile(
            title: const Text("스터디카페"),
            onTap: () {
              Uri url = Uri.parse("https://cafe.naver.com/tutiplatform");
              launchInBrowswer(url);
            },
          ),
          ListTile(
            title: const Text("상담받기"),
            onTap: () async {
              contactUsDialogKR(context);
            },
          ),
        ],
      ),
    );
  }
}
