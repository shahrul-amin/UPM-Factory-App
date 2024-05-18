// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:upm_factory/factoryPage/factory_page.dart';
import 'package:upm_factory/invitePage/invite_page.dart';
import 'package:upm_factory/settingPage/setting_page.dart';

class NavigationBars extends StatefulWidget {
  NavigationBars({super.key});

  @override
  _NavigationBarsState createState() => _NavigationBarsState();
}

class _NavigationBarsState extends State<NavigationBars> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodySection(),
      bottomNavigationBar: customBottomNavigationBar(),
    );
  }

  bodySection() {
    switch (currentIndex) {
      case 0:
        return InvitePage();
      case 1:
        return FactoryPage();
      case 2:
        return SettingPage();
    }
  }

  customBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            Icons.person,
            size: 28,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            Icons.home,
            size: 28,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(
            Icons.settings,
            size: 28,
          ),
        ),
      ],
      onTap: (int index) {
        setState(() {
          currentIndex = index;
        });
      },
    );
  }
}
