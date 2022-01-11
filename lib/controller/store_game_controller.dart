import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreGameController extends GetxController with GetSingleTickerProviderStateMixin{

  TabController? tabController;

  List<String> tabs = ["추천", "인기 차트", "키즈", "신규", "프리미엄", "카테고리", "에디터 추천"];

  @override
  void onInit() {
    tabController = TabController(length: tabs.length, vsync: this);
    super.onInit();
  }

}