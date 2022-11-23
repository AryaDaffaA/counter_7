import 'package:flutter/material.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/mywatchlist_page.dart';

class DrawerClass extends StatefulWidget {
  DrawerClass({Key? key}) : super(key: key);

  @override
  _DrawerClassState createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // other children,
          ListTile(
            leading: Icon(Icons.home),
            title: Text("counter_7"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const counter7()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.report),
            title: Text("Tambah Budget"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const AddBudgetPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Data Budget"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const BudgetDataPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.watch_later),
            title: Text("My Watchlist"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const WatchList()),
              );
            },
          ),
        ],
      ),
    );
  }
}