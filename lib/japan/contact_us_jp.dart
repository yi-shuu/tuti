import 'package:flutter/material.dart';
import 'package:iqua_web/component/launch_browswer.dart';

Future<void> contactUsDialogJp(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white, // AlertDialog 배경색
        title: const Text('お問い合わせ'),
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
                      "インスタグラム",
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
                      "カカオトーク",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(width: 20),
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
                    "ライン",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(width: 80),
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
                  const SizedBox(width: 70),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 22, child: Icon(Icons.email_outlined)),
                  SizedBox(width: 10),
                  Text(
                    "Eメール",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: 70),
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
