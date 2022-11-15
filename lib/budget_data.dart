class BudgetEntry {
  String judul;
  int nominal;
  String tipe;
  DateTime tanggal;

  BudgetEntry(this.judul, this.nominal, this.tipe, this.tanggal);
}

List<BudgetEntry> budgetList = [];