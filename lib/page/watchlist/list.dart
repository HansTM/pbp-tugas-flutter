import 'package:tugas/model/budget.dart';
import 'package:tugas/page/drawer.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WatchListListPage extends StatefulWidget {
  const WatchListListPage({super.key});
  final String title = 'My Watch List';

  @override
  State<WatchListListPage> createState() => _WatchListListPageState();
}

class _WatchListListPageState extends State<WatchListListPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: const GlobalDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: budgetList.map((BudgetEntry entry) {
              return Card(
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            entry.judul,
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              entry.nominal.toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              entry.tipe
                            )
                          ]
                        ),
                      ],
                    )
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(DateFormat("dd MMMM y").format(entry.tanggal)),  
                  ),
                ),
              );
            }).toList()
          ),
        ),
      ),
    );
  }
}

