import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [CupertinoTabBar].

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.dark),
      home: CupertinoTabBarExample(),
    );
  }
}

class CupertinoTabBarExample extends StatelessWidget {
  const CupertinoTabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.star_fill),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.clock_solid),
            label: 'Recents',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_alt_circle_fill),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.circle_grid_3x3_fill),
            label: 'Keypad',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            if (index == 0) {
              return CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: Text('Favorites'),
                ),
                child: Center(
                  child: Text('No favorites yet'),
                ),
              );
              ;
            } else if (index == 1) {
              return Center(
                child: Text('pestaña 2'),
              );
            } else if (index == 2) {
              return Center(
                child: Text('pestaña 3'),
              );
            } else if (index == 3) {
              return Center(
                child: Text('pestaña 4'),
              );
            }
            return Center(
              child: Text('Pestaña no reconocida'),
            );
          },
        );
      },
    );
  }
}
