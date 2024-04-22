import 'package:flutter/material.dart';
import 'package:iqua_web/english/contact_us_en.dart';
import 'package:iqua_web/english/drawer_en.dart';

class CompanyEn extends StatelessWidget {
  const CompanyEn({super.key});

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
              Navigator.pushNamed(context, '/home-En');
            },
            child: Image.asset(
              'images/tuti.png',
              width: 90,
            ),
          ),
        ),
        drawer: const DrawerEn(),
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
                  "Tuti is a platform that utilizes AI and big data technology to match domestic and international university students, universities, and companies."),
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
                  "The Tuti platform was created with the goal of enabling anyone who wants to explore the world, regardless of race, education, or parental background, to be able to do so, targeting university students worldwide."),
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
                    "Explore various global activities on tuti.",
                    // style: TextStyle(
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: 20,
                    // ),
                  ),
                  Text(
                    "We provide unique resources for growing into a global talent.",
                    // style: TextStyle(
                    //   fontWeight: FontWeight.bold,
                    //   fontSize: 20,
                    // ),
                  ),
                  Text(
                    "We support optimal university and company matches considering individual preferences, inclinations, and situations, by applying AI technology to university programs and diverse company pools worldwide through our proprietary search engine.",
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
                          Navigator.pushNamed(context, '/home-En');
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
                          Navigator.pushNamed(context, '/company-En');
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Company",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Jobs",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "University",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        onTap: () async {},
                      ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "Community",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        onTap: () {},
                      ),
                      GestureDetector(
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            "Study Cafe",
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
                          "Contact Us",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () async {
                      contactUsDialogEn(context);
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
                "Tuti is a platform that utilizes AI and big data technology to match domestic and international university students, universities, and companies.",
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
                "The Tuti platform was created with the goal of enabling anyone who wants to explore the world, regardless of race, education, or parental background, to be able to do so, targeting university students worldwide.",
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
                    "Explore various global activities on tuti.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "We provide unique resources for growing into a global talent.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "We support optimal university and company matches considering individual preferences, inclinations, and situations, by applying AI technology to university programs and diverse company pools worldwide through our proprietary search engine.",
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
