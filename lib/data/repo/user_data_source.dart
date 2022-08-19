import 'package:mandiritestadityatmdb/application/key_constant.dart';
import 'package:mandiritestadityatmdb/application/uri_constant.dart';
import 'package:mandiritestadityatmdb/data/network/base_network.dart';

class UserDataSource {
  Future<dynamic> onGuessSession() async {
    String pathUrl =
        MasterUri.userEndpoint.guestsession + KeyLocal.appKeyLocal.keyTokenTMDB;
    return BaseNetwork().get(pathUrl);
  }
}
