import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';

class BudgetFormPage extends StatefulWidget {
  const BudgetFormPage({super.key});
  final String title = 'Form Budget';

  @override
  State<BudgetFormPage> createState() => _BudgetFormPageState();
}

class _BudgetFormPageState extends State<BudgetFormPage> {

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

