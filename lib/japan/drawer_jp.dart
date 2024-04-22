import 'package:flutter/material.dart';
import 'package:iqua_web/japan/contact_us_jp.dart';

class DrawerJp extends StatelessWidget {
  const DrawerJp({super.key});

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
            title: const Text("ホーム"),
            onTap: () {
              Navigator.pushNamed(context, '/home-Jp');
            },
          ),
          ListTile(
            title: const Text("会社紹介"),
            onTap: () {
              Navigator.pushNamed(context, '/company-Jp');
            },
          ),
          const ListTile(
            title: Text("就職"),
          ),
          const ListTile(
            title: Text("大学"),
          ),
          const ListTile(
            title: Text("コミュニティ"),
          ),
          const ListTile(
            title: Text("勉強カフェ"),
          ),
          ListTile(
            title: const Text("お問い合わせ"),
            onTap: () async {
              contactUsDialogJp(context);
            },
          ),
        ],
      ),
    );
  }
}
