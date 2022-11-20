import 'package:tugas/page/counter.dart';
import 'package:tugas/page/budget/form.dart';
import 'package:tugas/page/budget/list.dart';
import 'package:tugas/page/watchlist/list.dart';
import 'package:flutter/material.dart';

class GlobalDrawer extends StatelessWidget {
  const GlobalDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const ListTile(
            title: Text(
              'Tugas 7',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              )
            ),
            dense: true,
          ),
          ListTile(
            title: const Text('Counter'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const CounterPage()),
              );
            },
          ),
          const ListTile(
            title: Text(
              'Tugas 8',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              )
            ),
            dense: true,
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const BudgetFormPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const BudgetListPage()),
              );
            },
          ),
          const ListTile(
            title: Text(
              'Tugas 9',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              )
            ),
            dense: true,
          ),
          ListTile(
            title: const Text('My Watch List'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const WatchListListPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
