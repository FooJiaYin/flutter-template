import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../theme/colors.dart';
import '../../utils/config.dart';
import 'home.dart';
import 'list.dart';
import 'settings.dart';

enum TabItem { home, list, settings }

class BottomNavPage extends StatefulWidget {
  BottomNavPage({
    this.tab = TabItem.home,
    Key? key,
  }) : super(key: key);

  TabItem tab;

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  static List<Widget> tabs = <Widget>[
    const HomePage(title: AppConfig.title),
    const ListPage(),
    const SettingPage(),
  ];
  late int currentTabId;

  @override
  void initState() {
    currentTabId = TabItem.values.indexOf(widget.tab);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: IndexedStack(
        index: currentTabId,
        children: tabs,
      ),
      bottomNavigationBar: menuBar(),
    );
  }

  Widget menuBar() {
    const List<IconData> icons = [
      Icons.home,
      Icons.list,
      Icons.settings,
    ];

    List<String> label = [
      S.of(context).home,
      S.of(context).list,
      S.of(context).settings,
    ];

    var items = TabItem.values
        .map(
          (e) =>
              // BottomNavigationBarItem(
              NavigationDestination(
            icon: Icon(icons[e.index]),
            label: label[e.index],
          ),
        )
        .toList();

    // return BottomNavigationBar(
    //   type: BottomNavigationBarType.fixed,
    //   items: TabItem.values.map((e) => BottomNavigationBarItem(
    //     icon: Icon(icons[e.index]),
    //     label: label[e.index],
    //   )).toList(),
    //   currentIndex: currentTabId,
    //   onTap: (id) {
    //     setState(() => currentTabId = id);
    //   },
    // );
    return NavigationBar(
      destinations: TabItem.values
          .map(
            (e) => NavigationDestination(
              icon: Icon(icons[e.index]),
              label: label[e.index],
            ),
          )
          .toList(),
      selectedIndex: currentTabId,
      onDestinationSelected: (id) {
        setState(() => currentTabId = id);
      },
    );
  }
}
