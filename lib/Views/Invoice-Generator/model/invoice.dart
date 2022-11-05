import 'package:gst_app/Views/Invoice-Generator/model/supplier.dart';

import 'customer.dart';

class Invoice {
  final InvoiceInfo info;
  final Supplier supplier;
  final Customer customer;
  final List<InvoiceItem> items;

   addTask(
    String description,
    // DateTime date,
    // int quantity,
    // double vat,
    // double unitPrice,
  ) {
    items.add(InvoiceItem(
      description: description,
      // date: date,
      // quantity:quantity,
      // vat: vat,
      // unitPrice: unitPrice,
    ));
    // notifyListeners();
  }

  const Invoice({
    this.info,
    this.supplier,
    this.customer,
    this.items,
  });
}

class InvoiceInfo {
  final String description;
  final String number;
  final DateTime date;
  final DateTime dueDate;

  const InvoiceInfo({
    this.description,
    this.number,
    this.date,
    this.dueDate,
  });
}

class InvoiceItem {
  final String description;
  final DateTime date;
  final int quantity;
  final double vat;
  final double unitPrice;

  const InvoiceItem({
    this.description,
    this.date,
    this.quantity,
    this.vat,
    this.unitPrice,
  });
}
