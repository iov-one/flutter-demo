import 'package:alan/alan.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../bl/wallet.dart';

class TransactionForm extends StatefulWidget {
  @override
  TransactionFormState createState() => TransactionFormState();
}

class TransactionFormState extends State<TransactionForm> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _address = TextEditingController();
  bool _isCreating = false;

  void _createTransaction() async {
    if (!_formKey.currentState.validate()) return;

    final wallet = context.read<Wallet>();
    if (wallet == null) {
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text('Create a wallet first.')));
      return;
    }

    setState(() => _isCreating = true);

    try {
      final result = await wallet.createTransaction(
        resource: _address.text,
        name: _name.text,
      );
      final text = result.isSuccessful
          ? 'Transaction succeeded.'
          : 'Transaction failed.';
      Scaffold.of(context).showSnackBar(SnackBar(content: Text(text)));
    } on Exception catch (e) {
      Scaffold.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    } finally {
      setState(() => _isCreating = false);
    }
  }

  @override
  Widget build(BuildContext context) => Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'starname ex: antoine*iov',
                ),
                controller: _name,
                validator: (value) =>
                    value.isEmpty ? 'Please enter some text' : null,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextFormField(
                controller: _address,
                decoration: InputDecoration(
                  hintText: 'ethereum address: 0x11AE8..',
                ),
                validator: (value) =>
                    value.isEmpty ? 'Please enter some text' : null,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: _isCreating ? null : _createTransaction,
                child: Text('Register'),
              ),
            ),
          ],
        ),
      );
}
