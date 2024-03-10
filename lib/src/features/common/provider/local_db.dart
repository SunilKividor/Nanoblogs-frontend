// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_db.g.dart';

@Riverpod(keepAlive: true)
CredentialStorage credentialStorage(CredentialStorageRef ref) => CredentialStorage(); 

class CredentialStorage {
  late FlutterSecureStorage storage;
  CredentialStorage(){
    storage = const FlutterSecureStorage();
  }
  
  Future<String> get getAccessToken async =>await storage.read(key: 'AccessToken') ?? '';
  Future<String> get getRefreshToken async => await storage.read(key: 'RefreshToken') ?? '';
  Future<void> setAccessToken(String accessToken) async => await storage.write(key: 'AccessToken', value: accessToken);
  Future<void> setRefreshToken(String accessToken) async => await storage.write(key: 'RefreshToken', value: accessToken);
}
