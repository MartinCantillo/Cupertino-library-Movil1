import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.dark),
      home: CupertinoTabBarr(),
    );
  }
}

class CupertinoTabBarr extends StatefulWidget {
  const CupertinoTabBarr({Key? key}) : super(key: key);

  @override
  _CupertinoTabBarState createState() => _CupertinoTabBarState();
}

class _CupertinoTabBarState extends State<CupertinoTabBarr> {
  int _currentIndex = 0;

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
                  leading: Icon(CupertinoIcons.add),
                ),
                child: Center(
                  child: Text('No favorites yet'),
                ),
              );
            } else if (index == 1) {
              return CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: Text('Recents'),
                ),
                child: Center(
                  child: CallList(),
                ),
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


//make call
class Call {
  final String contactName;
  final String dateTime;

  Call(this.contactName, this.dateTime);
}


class CallList extends StatelessWidget {
  const CallList({Key? key});

  @override
  Widget build(BuildContext context) {
    // list
    final List<Call> calls = [
      Call("Daniel Rivera", "Today, 10:30 AM"),
      Call("Diomedez Diaz", "yesterday, 5:45 PM"),
      Call("Antonio eliseo", "yesterday, 3:15 PM"),
      Call("Andrea ", "yesterday, 10:15 PM"),
     Call("Carol G ", "Today, 3:50 PM"),
     Call("Juaco pertuz ", "yesterday, 6:50 PM"),
     Call("Oscar Gamarra", "Today, 11:20 AM"),
    ];

    return ListView.builder(
      itemCount: calls.length,
      itemBuilder: (context, index) {
        final call = calls[index];
        return CupertinoListTile(
          title: Text(call.contactName),
          subtitle: Text(call.dateTime),
          leading: Icon(Icons.call), 
          //trailing: Icon(Icons.cancel), 
       
        );
      },
    );
  }
}
