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
      "msg": [
        {
          "type": "starname/RegisterAccount",
          "value": {
            "broker": "",
            "domain": "cosmos",
            "fee_payer": "",
            "name": name,
            "owner": resource,
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
