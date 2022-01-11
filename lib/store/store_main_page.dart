import 'package:flutter/material.dart';
import 'package:flutter_store/store/store_app_page.dart';
import 'package:flutter_store/store/store_book_page.dart';
import 'package:flutter_store/store/store_game_page.dart';
import 'package:flutter_store/store/store_movie_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StoreMainPage extends StatefulWidget {
  const StoreMainPage({Key? key}) : super(key: key);

  @override
  _StoreMainPageState createState() => _StoreMainPageState();
}

class _StoreMainPageState extends State<StoreMainPage> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          StoreGamePage(),
          StoreAppPage(),
          StoreMoviePage(),
          StoreBookPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.gamepad), label: "게임"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.qrcode), label: "앱"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.film), label: "영화"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.book), label: "도서"),
        ],
      ),
    );
  }
}
