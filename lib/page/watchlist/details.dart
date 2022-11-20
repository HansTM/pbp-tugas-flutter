import 'package:tugas/model/budget.dart';
import 'package:tugas/page/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class WatchListDetailsPage extends StatefulWidget {
  const WatchListDetailsPage({super.key});
  final String title = 'Form Budget';

  @override
  State<WatchListDetailsPage> createState() => _WatchListDetailsPageState();
}

class _WatchListDetailsPageState extends State<WatchListDetailsPage> {
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
          child: Container()
        ),
      ),
    );
  }
}

