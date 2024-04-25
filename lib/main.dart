import 'package:flutter/material.dart';
import 'package:iqua_web/china/company_simple.dart';
import 'package:iqua_web/china/home_simple.dart';
import 'package:iqua_web/english/company_en.dart';
import 'package:iqua_web/english/home_en.dart';
import 'package:iqua_web/home/company.dart';
import 'package:iqua_web/home/home.dart';
import 'package:iqua_web/japan/company_jp.dart';
import 'package:iqua_web/japan/home_jp.dart';

void main() {
  runApp(const Tuti());
}

class Tuti extends StatelessWidget {
  const Tuti({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,
          ),
      //글자 일정 크기 유지
      debugShowCheckedModeBanner: false,
      initialRoute: '/home/en',
      home: const HomeEn(),
      routes: {
        // '/login': (context) => const Login(),
        // '/agree': (context) => const Agree(),
        '/home': (context) => const Home(),
        '/home/en': (context) => const HomeEn(),
        '/home/jp': (context) => const HomeJp(),
        '/home/simple': (context) => const HomeSimple(),
        '/company': (context) => const Company(),
        '/company/en': (context) => const CompanyEn(),
        '/company/jp': (context) => const CompanyJp(),
        '/company/simple': (context) => const CompanySimple(),
        // '/webLogin': (context) => const WebLogin(),
        // '/webTabPage': (context) => const WebTabBarPage(),
        // '/webHome': (context) => const WebHome(),
        // '/webMyPage': (context) => const WebMyPage(),
      },
    );
  }
}
