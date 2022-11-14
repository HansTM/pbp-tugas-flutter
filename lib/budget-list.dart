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
      body: Center(
      ),
    );
  }
}

