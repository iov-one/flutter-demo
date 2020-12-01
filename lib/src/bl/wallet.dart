import 'dart:convert';

import 'package:alan/alan.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'transaction.dart';

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

  Future<TxResponse> sendMoney() async {
    final message = MsgSend(
      fromAddress: bech32Address,
      toAddress: "star1xjxt2tm0y60ypcnezth0t0uglmad3t84307vl8",
      amount: [StdCoin(denom: "uvoi", amount: "100")],
    );

    final stdTx = TxBuilder.buildStdTx(
      [message],
      memo: 'Optional memo',
      fee: StdFee(
        gas: '200000',
        amount: [StdCoin(amount: '200000', denom: 'uvoi')],
      ),
    );

    final client = http.Client();
    final signer = TxSigner.build(client);
    print(jsonEncode(stdTx.toJson()));
    final signedTx = await signer.signStdTx(stdTx, this);
    final sender = TxSender.build(client);
    return sender.broadcastStdTx(
      signedTx,
      this,
      mode: SendMode.MODE_BLOCK,
    );
  }

  Future<void> queryChain() async {
    final querier = AuthQuerier.build(http.Client());
    final account = await querier.getAccountData(
      _url,
      bech32Address,
    );
    print(account);
  }
}
