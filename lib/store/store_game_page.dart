import 'package:flutter/material.dart';

class StoreGamePage extends StatelessWidget {
  const StoreGamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: Text("title"),
            ),
          ];
        },
        body: Column(
          children: [
            _buildTabBar()
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar() {
      return SizedBox();
  }
}
