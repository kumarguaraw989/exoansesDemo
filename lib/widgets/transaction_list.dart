import 'package:flutter/material.dart';
import '../model/transaction.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget{
   @override
   _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New Umbrellas', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't3', title: 'New Notebooks', amount: 29.99, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return   Column(
              children: _userTransaction.map((tx) {
                return Card(
                    child: Row(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple, width: 2)),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '₹ ' + tx.amount.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tx.title.toString(),
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(DateFormat('yyyy/mm/dd').format(tx.date),
                            style: TextStyle(color: Colors.grey))
                      ],
                    )
                  ],
                ));
              }).toList(),
            );
  }

}