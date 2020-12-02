import 'package:alan/alan.dart';
import 'package:flutter/material.dart';

import 'main.reflectable.dart';
import 'src/bl/msg_register_starname_account.dart';
import 'src/presentation/app.dart';

void main() {
  Codec.registerMsgType('starname/RegisterAccount', MsgRegisterStarnameAccount);

  initializeReflectable();

  runApp(const App());
}
