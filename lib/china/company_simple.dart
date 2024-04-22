import 'package:flutter/material.dart';
import 'package:iqua_web/china/contact_us_simple.dart';
import 'package:iqua_web/china/drawer_simple.dart';

class CompanySimple extends StatelessWidget {
  const CompanySimple({super.key});

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
              Navigator.pushNamed(context, '/home-Simple');
            },
            child: Image.asset(
              'images/tuti.png',
              width: 90,
            ),
          ),
        ),
        drawer: const DrawerSimple(),
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
              child: const Text("Tuti是一个利用人工智能和大数据技术来匹配国内外大学生、大学和企业的平台。"),
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
                  "Tuti 平台的创建目标是让任何想要探索世界的人，无论种族、教育或父母背景如何，都能够这样做，目标是世界各地的大学生。"),
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
                    "探索 tuti 上的各种全球活动。",
                    // style: TextStyle(
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: 20,
                    // ),
                  ),
                  Text(
                    "我们为成长为全球人才提供独特的资源。",
                    // style: TextStyle(
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: 20,
                    // ),
                  ),
                  Text(
                    "我们通过我们专有的搜索引擎将人工智能技术应用于世界各地的大学项目和不同的公司池，考虑个人偏好、倾向和情况，支持最佳的大学和公司匹配。",
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
                          Navigator.pushNamed(context, '/home-Simple');
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
                          Navigator.pushNamed(context, '/company-Simple');
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Text(
                            "公司",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Text(
                          "工作",
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
                            "社区",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "学习咖啡厅",
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
                          "联系我们",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () async {
                      contactUsDialogSimple(context);
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
                "Tuti是一个利用人工智能和大数据技术来匹配国内外大学生、大学和企业的平台。",
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
                "Tuti 平台的创建目标是让任何想要探索世界的人，无论种族、教育或父母背景如何，都能够这样做，目标是世界各地的大学生。",
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
                    "探索 tuti 上的各种全球活动。",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "我们为成长为全球人才提供独特的资源。",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "我们通过我们专有的搜索引擎将人工智能技术应用于世界各地的大学项目和不同的公司池，考虑个人偏好、倾向和情况，支持最佳的大学和公司匹配。",
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
              child: Column(
                children: [
                  Image.asset(
                    "images/map.png",
                    scale: 2.5,
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: const Text("Image copyright @rawpixel.com"),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
