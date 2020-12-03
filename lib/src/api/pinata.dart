import 'dart:io';

import 'package:dio/dio.dart';

class PinataApi {
  const PinataApi(this._dio, this._apiKey, this._apiSecretKey);

  final Dio _dio;
  final String _apiKey;
  final String _apiSecretKey;

  Future<String> pinFile(File file, String name) async {
    final options = Options(
      headers: <String, dynamic>{
        'pinata_api_key': _apiKey,
        'pinata_secret_api_key': _apiSecretKey,
      },
    );
    final data = FormData.fromMap(<String, dynamic>{
      'file': await MultipartFile.fromFile(file.path),
    });
    final response = await _dio.post<Map<String, dynamic>>(
      'https://api.pinata.cloud/pinning/pinFileToIPFS',
      data: data,
      options: options,
    );
    final hash = response.data['IpfsHash'] as String;

    final jsonResponse = await _dio.post<Map<String, dynamic>>(
      'https://api.pinata.cloud/pinning/pinJSONToIPFS',
      data: <String, dynamic>{
        'name': name,
        'photo': 'https://gateway.pinata.cloud/ipfs/$hash',
      },
      options: options,
    );

    return 'https://gateway.pinata.cloud/ipfs/${jsonResponse.data['IpfsHash']}';
  }
}
