import 'package:counter_7/budget-data.dart';
import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';

class BudgetListPage extends StatefulWidget {
  const BudgetListPage({super.key});
  final String title = 'Data Budget';

  @override
  State<BudgetListPage> createState() => _BudgetListPageState();
}

class _BudgetListPageState extends State<BudgetListPage> {

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
            children: budgetList.map((BudgetEntry item) {
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
                            item.judul,
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
                              item.nominal.toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              item.tipe
                            )
                          ]
                        ),
                        
                      ],
                    )
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(item.tanggal.toString()),  
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

