import 'package:alan/alan.dart';
import 'package:flutter/material.dart';
import 'package:starname_demo/src/bl/msg_register_starname_account.dart';
import 'package:starname_demo/src/bl/msg_replace_starname_account.dart';
import 'package:starname_demo/src/presentation/app.dart';

import 'main.reflectable.dart';

const pinataApiKey = '';
const pinataApiSecretKey = '';

void main() {
  Codec.registerMsgType('starname/RegisterAccount', MsgRegisterStarnameAccount);
  Codec.registerMsgType(
    'starname/ReplaceAccountResources',
    MsgReplaceStarnameAccount,
  );

  initializeReflectable();

  runApp(const App());
}
