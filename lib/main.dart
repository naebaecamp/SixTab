import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 6,
      child: Builder(builder: (context) {
        DefaultTabController.of(context)?.addListener(() {
          setState(() {});
        });

        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                // Perform navigation or any other action
              },
            ),
          ),
          body: Stack(
            children: [
              TabBarView(
                children: [
                  FirstTab(),
                  SecondTab(),
                  ThirdTab(),
                  FourTab(),
                  FiveTab(),
                  SixTab(),
                ],
              ),
              SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

// 첫번째 페이지
class FirstTab extends StatelessWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('메인 페이지'));
  }
}

// 두번째 페이지
class SecondTab extends StatelessWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('첫번째 페이지'));
  }
}

// 세번째 페이지
class ThirdTab extends StatelessWidget {
  const ThirdTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('두번째 페이지'));
  }
}

// 4번째 페이지
class FourTab extends StatelessWidget {
  const FourTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('세번째 페이지'));
  }
}

// 5번째 페이지
class FiveTab extends StatelessWidget {
  const FiveTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('네번째 페이지'));
  }
}

// 6번째 페이지
class SixTab extends StatelessWidget {
  const SixTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '팀원 | 이상훈',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'MBTI | ISTJ',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            '소개 | 안녕하세요! 내일배움캠프 7기_Android 9조'
            ' 이상훈입니다!'
            ' 아직 미숙하지만'
            ' 열심히 하겠습니다!',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            '스타일 | 좋은 의견이 있으면 수용한다. '
            '팀원과 좋은 관계를 유지하려 합니다. '
            '먼저 의견을 제시하기보다는 경청부터 합니다.',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            '장점 | 기억력이 좋다. 근면성실하다. 책임감이 강하다. '
            '인내력이 강하다. 정직하다. 체계적이고 논리적이다. '
            '실수한 것에 대해 즉각 수정한다. ',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            '블로그: https://velog.io/@sanghoon_2',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
