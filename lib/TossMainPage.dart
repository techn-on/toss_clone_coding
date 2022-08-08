import 'bottomnavigationbar.dart';
import 'package:flutter/material.dart';

class TossMainPage extends StatefulWidget {
  const TossMainPage({Key? key}) : super(key: key);

  @override
  State<TossMainPage> createState() => _TossMainPageState();
}

class _TossMainPageState extends State<TossMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 99,
        backgroundColor: const Color(0xffF2F4F6),
        leading: Image.asset('images/tossapp.png'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.chat_bubble)),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
              )),
        ],
      ),
      body: ListView(children: <Widget>[
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40), // if you need this
            side: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 1,
            ),
          ),
          child: Row(
            children: <Widget>[
              Container(
                width: 38,
              ),
              const Text(
                '토스뱅크',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
              ),
              Container(
                width: 215,
              ),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40), // if you need this
            side: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 1,
            ),
          ),
          child: Column(
            children: <Widget>[
              Row(children: [
                Container(
                  width: 38,
                ),
                const Text(
                  '자산',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                ),
                Container(
                  width: 251,
                ),
                const Icon(Icons.arrow_forward_ios),
              ]),
              const ListTile(
                leading: Icon(Icons.person),

                title: Text('토스뱅크 통장'),
                subtitle: Text(
                  "16,735 원",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                //trailing: ,)
              ),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('우리뱅크월렛카카오통장\n(저축예금)'),
                subtitle: Text(
                  "74,000 원",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                //trailing: ,)
              ),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('보통예금(IBK평생한가족통장)'),
                subtitle: Text(
                  "0 원",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                //trailing: ,)
              ),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('입출금통장'),
                subtitle: Text(
                  "0 원",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                //trailing: ,)
              ),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('영하나플러스 통장'),
                subtitle: Text(
                  "12,210 원",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                //trailing: ,)
              ),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('저축   우리청년희망 적금'),
                subtitle: Text(
                  "2,500,000 원",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                //trailing: ,)
              ),
              const Divider(
                height: 20,
                thickness: 5,
                indent: 38,
                endIndent: 42,
                color: Color(0xffD2D6DA),
              ),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('포인트 머니   2개'),
                subtitle: Text(
                  "2,500,000 원",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                //trailing: ,)
              ),
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40), // if you need this
            side: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 1,
            ),
          ),
          child: Column(
            children: <Widget>[
              Row(children: [
                Container(
                  width: 38,
                ),
                const Text(
                  '소비',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                ),
              ]),
              const ListTile(
                leading: Icon(Icons.person),

                title: Text('이번 달 쓴 금액'),
                subtitle: Text(
                  "467,200 원",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                //trailing: ,)
              ),
              const Divider(
                height: 20,
                thickness: 5,
                indent: 38,
                endIndent: 42,
                color: Color(0xffD2D6DA),
              ),
              const ListTile(
                leading: Icon(Icons.person),

                title: Text('7월 13일 낼 카드값'),
                subtitle: Text(
                  "1,200 원",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                //trailing: ,)
              ),
            ],
          ),
        )
      ]),
      bottomNavigationBar: Bottomwidget(),
    );
  }
}
