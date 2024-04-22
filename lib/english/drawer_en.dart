import 'package:flutter/material.dart';
import 'package:iqua_web/english/contact_us_en.dart';

class DrawerEn extends StatelessWidget {
  const DrawerEn({super.key});

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
            title: const Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, '/home-En');
            },
          ),
          ListTile(
            title: const Text("Company"),
            onTap: () {
              Navigator.pushNamed(context, '/company-En');
            },
          ),
          const ListTile(
            title: Text("Jobs"),
          ),
          const ListTile(
            title: Text("University"),
          ),
          const ListTile(
            title: Text("Community"),
          ),
          const ListTile(
            title: Text("Study Cafe"),
          ),
          ListTile(
            title: const Text("Contact Us"),
            onTap: () async {
              contactUsDialogEn(context);
            },
          ),
        ],
      ),
    );
  }
}
