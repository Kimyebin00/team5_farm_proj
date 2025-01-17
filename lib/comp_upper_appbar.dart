import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void _gotoMyPage() {
  // 마이 페이지로 이동
  Fluttertoast.showToast(msg: '프로필 눌림', toastLength: Toast.LENGTH_SHORT);
}

void _openMenu() {
  // 햄버거 버튼 누를 시 실행할 기능
  Fluttertoast.showToast(msg: '햄버거 버튼 눌림', toastLength: Toast.LENGTH_SHORT);
}

// 상단바 구현
class UpperAppbar {
  AppBar _appBar = AppBar(
    leading: const IconButton(
      onPressed: _openMenu,
      icon: Icon(Icons.menu),
    ),
    title: const Text(
      'appbar title',
      textAlign: TextAlign.center,
    ),
    actions: <Widget>[
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: IconButton(
          onPressed: _gotoMyPage,
          icon: Image.asset('assets/images/baseProfile.jpg'),
        ),
      ),
    ],
  );

  /* 상단바 component의 title을 변경한다. */
  UpperAppbar changeTitle(String title) {
    _appBar = AppBar(
      leading: const IconButton(
        onPressed: _openMenu,
        icon: Icon(Icons.menu),
      ),
      title: Text(title),
      actions: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            onPressed: _gotoMyPage,
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(80.0),
              child: Image.asset(
                'assets/images/baseProfile.jpg',
                width: 100,
              ),
            ),
          ),
        ),
      ],
    );

    return this;
  }

  get appBar {
    return _appBar;
  }
}
