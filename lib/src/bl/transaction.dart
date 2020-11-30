import 'package:flutter/foundation.dart';

Map<String, dynamic> createTransactionData({
  @required String resource,
  @required String name,
}) =>
    {
      "fee": {
        "amount": [
          {"amount": "4000000", "denom": "uiov"}
        ],
        "gas": "2000000"
      },
      "memo": "",
      "msgs": [
        {
          "type": "starname/RegisterAccount",
          "value": {
            "broker": "star1nrnx8mft8mks3l2akduxdjlf8rwqs8r9l36a78",
            "domain": "cosmos",
            "fee_payer": "",
            "name": "blin4545",
            "owner": "star1ayxmc4vqshd9j94hj67r55ppg5hsrhqlmy4dvd",
            "registerer": "star1ayxmc4vqshd9j94hj67r55ppg5hsrhqlmy4dvd",
            "resources": [
              {
                "resource": resource,
                "uri": "asset:eth",
              }
            ]
          }
        }
      ],
    };
