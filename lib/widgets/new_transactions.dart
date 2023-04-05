import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function newTx;

  NewTransaction(this.newTx);

  final titleControler = TextEditingController();
  final amountControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleControler,
              // onChanged: (value) => titleInput = value,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountControler,
              // onChanged: (value) => amountInput = value,
            ),
            TextButton(
              onPressed: () {
                newTx(
                  titleControler.text,
                  double.parse(amountControler.text),
                );
              },
              child: Text('Add Transation'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
