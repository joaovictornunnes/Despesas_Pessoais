import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:teste/models/transaction.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    Key? key,
    required this.tr,
    required this.onRemove,
  }) : super(key: key);

  final Transaction tr;
  final void Function(String p1) onRemove;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 5,
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child:FittedBox(
              child: Text('R\$${tr.value}'),
            ),
          ),
        ),
        title: Text(
          tr.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        subtitle: Text(
          DateFormat('d MMM y').format(tr.date),
        ),
        trailing: MediaQuery.of(context).size.width > 480 
        ? ElevatedButton.icon(
          onPressed: () => onRemove(tr.id),
          icon: Icon(Icons.delete),
          label: Text('Excluir'),
          style: ElevatedButton.styleFrom(
            primary: Theme.of(context).errorColor,
            onPrimary: Colors.white,
          ),
        )
        : IconButton(
          icon: Icon(Icons.delete),
          color: Theme.of(context).errorColor,
          onPressed: () => onRemove(tr.id),
        ),
      )
    );
  }
}

