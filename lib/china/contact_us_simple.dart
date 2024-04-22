import 'package:flutter/material.dart';
import 'package:iqua_web/component/launch_browswer.dart';

Future<void> contactUsDialogSimple(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white, // AlertDialog 배경색
        title: const Text('联系我们'),
        content: SizedBox(
          height: 190,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () async {
                  Uri url =
                      Uri.parse("https://www.instagram.com/tuti_platform/");
                  launchInBrowswer(url);
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 22,
                      child: Image.asset(
                        "images/instagram.png",
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Instagram",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () async {
                  Uri url = Uri.parse("https://pf.kakao.com/_jXxdxmG");
                  launchInBrowswer(url);
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 22,
                      child: Image.asset(
                        "images/kakaologo.png",
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "KakaoTalk",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 22,
                    child: Image.asset(
                      "images/line.png",
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Line",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(width: 56),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 22,
                    child: Image.asset(
                      "images/wechat.png",
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "WeChat",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(width: 23),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 22, child: Icon(Icons.email_outlined)),
                  SizedBox(width: 10),
                  Text(
                    "E-mail",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: 40),
                ],
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}
