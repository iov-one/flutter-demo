import 'dart:convert';

import 'package:alan/alan.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:starname_demo/src/bl/msg_register_starname_account.dart';

const _url = 'https://iovnscli-rest-api.cluster-galaxynet.iov.one';

final _networkInfo = NetworkInfo(
  bech32Hrp: 'star',
  lcdUrl: _url,
);

final mnemonic =
    'year december unable size cute swamp lock season retreat during apology code'
        .split(' ');

Wallet _createWallet([dynamic _]) => Wallet.derive(
      mnemonic,
      _networkInfo,
      derivationPath: "m/44'/234'/0'/0/0",
    );

Future<Wallet> createWallet() => compute(_createWallet, null);

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
    print(jsonEncode(stdTx.toJson()));
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
