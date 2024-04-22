import 'package:flutter/material.dart';
import 'package:iqua_web/japan/contact_us_jp.dart';
import 'package:iqua_web/japan/drawer_jp.dart';

class CompanyJp extends StatelessWidget {
  const CompanyJp({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if (size.width < 765) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/home-Jp');
            },
            child: Image.asset(
              'images/tuti.png',
              width: 90,
            ),
          ),
        ),
        drawer: const DrawerJp(),
        body: ListView(
          children: [
            const SizedBox(height: 80),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 50),
              child: Image.asset(
                'images/iquainc.png',
                scale: 4,
              ),
            ),
            const SizedBox(height: 50),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 50),
              child: Image.asset(
                'images/aboutus.png',
                scale: 4,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: const Text(
                  "Tutiは、AIとビッグデータ技術を活用して、国内外の大学生や就学生に適した大学、会社をマッチングさせるプラットフォームです。"),
            ),
            const SizedBox(height: 50),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 50),
              child: Image.asset(
                'images/ourmission.png',
                scale: 4,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: const Text(
                  "Tutiプラットフォームは、人種学歴の両親に関係なく、世界中の大学生を対象に広い世界を探索したい人なら誰でも可能にしようという目標として誕生しました。"),
            ),
            const SizedBox(height: 50),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 50),
              child: Image.asset(
                'images/whatwedo.png',
                scale: 4,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tutiでさまざまな分野のグローバル活動を学びましょう。",
                    // style: TextStyle(
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: 20,
                    // ),
                  ),
                  Text(
                    "グローバル人材に成長するための独自のリソースを提供します。",
                    // style: TextStyle(
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: 20,
                    // ),
                  ),
                  Text(
                    "世界中の大学プログラム、世界中の様々な会社プールにAI技術を適用し、個人の希望進出地域、傾向、状況を考慮した最適な大学、会社マッチングのための自己検索エンジンの開発を通じて支援します。",
                    // style: TextStyle(
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: 20,
                    // ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Container(
              width: size.width,
              margin: const EdgeInsets.only(bottom: 0),
              child: Image.asset(
                "images/map.png",
                scale: 2.5,
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: const Text(
                "Image copyright @rawpixel.com",
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            // Tuti, 검색, 알림 화면
            Container(
              alignment: Alignment.center,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/home-Jp');
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 30),
                          child: Image.asset(
                            'images/tuti.png',
                            width: 90,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/company-Jp');
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Text(
                            "会社紹介",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Text(
                          "就職",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "大学",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        onTap: () async {},
                      ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "コミュニティ",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "勉強カフェ",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 30,
                      margin: const EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.lightGreen[800]),
                      child: const Center(
                        child: Text(
                          "お問い合わせ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () async {
                      contactUsDialogJp(context);
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 70),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 90),
              child: Image.asset(
                "images/iquainc.png",
                scale: 2.5,
              ),
            ),
            const SizedBox(height: 100),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 90),
              child: Image.asset(
                "images/aboutus.png",
                scale: 2.5,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 90),
              child: const Text(
                "Tutiは、人工知能およびビッグデータ技術を活用して、国内外の大学生、大学、企業をマッチングするプラットフォームです。",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 100),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 90),
              child: Image.asset(
                "images/ourmission.png",
                scale: 2.5,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 90),
              child: const Text(
                "Tutiプラットフォームは、人種、教育、親の背景に関係なく、広い世界を探検したいと考える人々が可能になるよう目指して作られました。これは世界中の大学生を対象としています。",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 100),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 90),
              child: Image.asset(
                "images/whatwedo.png",
                scale: 2.5,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(left: 90),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tutiでさまざまなグローバル活動を探索してください。",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "私たちはグローバルな才能に成長するためのユニークなリソースを提供します。",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "私たちはAI技術を世界中の大学プログラムと多様な企業プールに適用し、個々の希望、傾向、状況を考慮して、最適な大学と企業のマッチングをサポートします。",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
            Container(
              width: size.width,
              margin: const EdgeInsets.only(bottom: 0),
              child: Image.asset(
                "images/map.png",
                scale: 2.5,
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: const Text("Image copyright @rawpixel.com"),
            ),
          ],
        ),
      );
    }
  }
}
