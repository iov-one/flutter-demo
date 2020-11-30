import 'package:alan/alan.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'transaction.dart';

final _networkInfo = NetworkInfo(
  bech32Hrp: 'star',
  lcdUrl: 'https://rpc-private-iov-mainnet-2.iov.one/',
);

Wallet _createWallet([dynamic _]) => Wallet.random(
      _networkInfo,
      derivationPath: "m/44'/234'/0'/0/0",
    );

Future<Wallet> createWallet() => compute(_createWallet, null);

extension WalletExt on Wallet {
  Future<TxResponse> createTransaction({
    @required String resource,
    @required String name,
  }) async {
    final data = createTransactionData(
      resource: resource,
      name: name,
    );
    final stdTx = StdTx.fromJson(data);

    final client = http.Client();
    final signer = TxSigner.build(client);
    final signedTx = await signer.signStdTx(stdTx, this);
    final sender = TxSender.build(client);
    return sender.broadcastStdTx(
      signedTx,
      this,
      mode: SendMode.MODE_BLOCK,
    );
  }
}
