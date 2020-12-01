import 'package:alan/alan.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../bl/wallet.dart';

class WalletForm extends StatefulWidget {
  const WalletForm({Key key, @required this.onWalletUpdated}) : super(key: key);

  final ValueSetter<Wallet> onWalletUpdated;

  @override
  WalletFormState createState() => WalletFormState();
}

class WalletFormState extends State<WalletForm> {
  bool _isCreatingWallet = false;

  void _onCreateWalletClicked() {
    setState(() => _isCreatingWallet = true);
    createWallet().then((wallet) async {
      print(wallet.bech32Address);
      await wallet.credit();
      await Future.delayed(const Duration(seconds: 5));
      await wallet.queryChain();
      return wallet;
    }).then(
      (wallet) {
        widget.onWalletUpdated(wallet);
        setState(() => _isCreatingWallet = false);
      },
      onError: (_) {
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text('Wallet creating failed.')));
        setState(() => _isCreatingWallet = false);
      },
    );
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: _isCreatingWallet ? null : _onCreateWalletClicked,
              child: Text('Create Wallet'),
            ),
          ),
          Text(context.watch<Wallet>()?.bech32Address ?? ''),
        ],
      );
}
