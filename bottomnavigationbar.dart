import 'package:flutter/material.dart';

@immutable
class Bottomwidget extends StatefulWidget {
  final List<Widget> screenList = [
    const Text('홈'),
    const Text('혜택'),
    const Text('송금'),
    const Text('주식'),
    const Text('전체')
  ];

  Bottomwidget({Key? key}) : super(key: key);

  @override
  State<Bottomwidget> createState() => _BottomwidgetState();
}

class _BottomwidgetState extends State<Bottomwidget> {
  int screenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: screenIndex,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/dia.jpg')), label: '혜택'),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/send.jpg')), label: '송금'),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/mon.jpg')), label: '주식'),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: '전체'),
      ],
      selectedItemColor: const Color(0xff353C49),
      //unselected된 item color
      unselectedItemColor: const Color(0xffD2D6DA),
      onTap: (value) {
        setState(() {
          //상태 갱신이 되지 않으면 동작을 하지 않음
          screenIndex = value;
        });
      },
    );
  }
}
