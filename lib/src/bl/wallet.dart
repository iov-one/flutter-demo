import 'dart:convert';

import 'package:alan/alan.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:starname_demo/src/api/rest_client.dart';
import 'package:starname_demo/src/bl/msg_register_starname_account.dart';

final _networkInfo = NetworkInfo(
  bech32Hrp: 'star',
  lcdUrl: restApiBaseUrl,
);

Wallet _createWallet(String mnemonic) => Wallet.derive(
      mnemonic.split(' '),
      _networkInfo,
      derivationPath: "m/44'/234'/0'/0/0",
    );

Future<Wallet> createWallet(String mnemonic) =>
    compute(_createWallet, mnemonic);

extension WalletExt on Wallet {
  Future<void> credit() async {
    final client = http.Client();
    final result = await client.get(
        'https://faucet.cluster-galaxynet.iov.one/credit?address=$bech32Address');
    print(result.body);
  }

  Future<TxResponse> registerStarnameAccount({
    @required String resource,
    @required String name,
  }) async {
    final message = MsgRegisterStarnameAccount(
      broker: '',
      domain: 'iov',
      feePayer: '',
      name: name,
      owner: bech32Address,
      registerer: bech32Address,
      resources: [
        Resource(
          resource: resource,
          uri: 'asset:iov',
        )
      ],
    );
    final stdTx = TxBuilder.buildStdTx(
      [message],
      fee: const StdFee(
        gas: '200000',
        amount: [StdCoin(amount: '200000', denom: 'uvoi')],
      ),
    );
    final client = http.Client();
    final signer = TxSigner.build(client);
    final signedTx = await signer.signStdTx(stdTx, this);
    print(jsonEncode(signedTx.toJson()));
    final sender = TxSender.build(client);
    return sender.broadcastStdTx(
      signedTx,
      this,
      mode: SendMode.MODE_BLOCK,
    );
  }
}
