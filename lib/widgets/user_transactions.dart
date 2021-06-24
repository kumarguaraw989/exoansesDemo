import 'package:flutter/material.dart';

import './new_transactions.dart';
import './transaction_list.dart';

class UserTransactions extends  StatefulWidget{
  @override
  _UserTransactionState  createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransactions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          NewTransaction(),
           TransactionList(),
      ],
    );
  }

}