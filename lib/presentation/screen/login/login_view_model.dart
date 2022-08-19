import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mandiritestadityatmdb/data/network/local_preferences.dart';
import 'package:mandiritestadityatmdb/data/repo/user_data_source.dart';

class GuessSessionNotifier extends StateNotifier<String> {
  GuessSessionNotifier() : super("1") {
    // _initGet();
  }

  UserDataSource userDataSource = UserDataSource();

  initGet() async {
    Map? response = await userDataSource.onGuessSession();
    if (response == null) {
      return;
    }
    String parsed = response['guest_session_id'];
    await DityaSharedPreferences.instance.setStringValue("session", parsed);
    debugPrint("saving session : $parsed");
  }
}
