import 'package:flutter/material.dart';
import 'package:teste/components/transaction_item.dart';
import 'package:teste/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;
  final void Function(String) onRemove;

  TransactionList(this.transaction, this.onRemove);

  @override
  Widget build(BuildContext context) {
    return transaction.isEmpty 
    ? LayoutBuilder(
      builder: (ctx , constrains) {
        return Column(
          children: <Widget>[
        SizedBox(height: 20),
        Text(
          'Nenhuma transação feita',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: 20
        ),
        Container(
          height: constrains.maxHeight * 0.6,
          child:
            Image.asset
            (
            'assets/images/waiting.png',
            fit: BoxFit.cover,
            ),
          ),
        ],
      );
    }) 
    : ListView.builder(
      itemCount: transaction.length,
      itemBuilder:(ctx, index){
        final tr = transaction[index];
        return TransactionItem(tr: tr, onRemove: onRemove);
      }
    );
  }
}

