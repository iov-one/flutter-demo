import 'package:alan/alan.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'transaction_form.dart';
import 'wallet_form.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Wallet _wallet;

  void _onWalletUpdated(Wallet wallet) => setState(() {
        _wallet = wallet;
      });

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Starname Registration in Flutter';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: SingleChildScrollView(
          child: Provider.value(
            value: _wallet,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WalletForm(onWalletUpdated: _onWalletUpdated),
                TransactionForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
