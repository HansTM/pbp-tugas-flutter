import 'package:tugas/budget_data.dart';
import 'package:tugas/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class BudgetFormPage extends StatefulWidget {
  const BudgetFormPage({super.key});
  final String title = 'Form Budget';

  @override
  State<BudgetFormPage> createState() => _BudgetFormPageState();
}

class _BudgetFormPageState extends State<BudgetFormPage> {
  final _formKey = GlobalKey<FormState>();

  String _judul = '';
  int _nominal = 0;
  final List<String> _listTipe = ['Pemasukan', 'Pengeluaran'];
  String _tipe = 'Pemasukan';
  DateTime? _tanggal = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: const GlobalDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh: Beli Barang",
                      labelText: "Judul",
                      // icon: const Icon(Icons.people),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Judul tidak boleh kosong.';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh: 1000",
                      labelText: "Nominal",
                      // icon: const Icon(Icons.people),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onChanged: (String? value) {
                      setState(() {
                        _nominal = int.parse(value!);
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _nominal = int.parse(value!);
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Nominal tidak boleh kosong.';
                      }
                      return null;
                    },
                  ),
                ),
                ListTile(
                  // leading: const Icon(Icons.class_),
                  title: const Text(
                    'Tipe',
                  ),
                  trailing: DropdownButton(
                    value: _tipe,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: _listTipe.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _tipe = newValue!;
                      });
                    },
                  ),
                ),
                ListTile(
                  // leading: const Icon(Icons.class_),
                  title: const Text(
                    'Tanggal',
                  ),
                  trailing: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    child: Text(
                      _tanggal == null ? 'Tidak ada' : DateFormat("dd MMMM y").format(_tanggal!),
                      style: const TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2099),
                      ).then((date) {  //tambahkan setState dan panggil variabel _dateTime.
                        setState(() {
                          _tanggal = date;
                        });
                      });
                    },
                  ),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(16.0))
                  ),
                  child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      budgetList.add(BudgetEntry(_judul, _nominal, _tipe, _tanggal!));
                      // log(budgetList.length.toString());
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

