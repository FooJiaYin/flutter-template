/// Global service, MUST call `init()` when app first launched!
import 'dart:async';
import "package:collection/collection.dart";
import 'package:dio/dio.dart';
import 'package:flutter_template/models/file.dart';
import 'package:flutter_template/models/sample.dart';
import 'package:flutter_template/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_template/models/api/response.dart';
import 'package:flutter_template/models/account.dart';
import 'package:flutter_template/models/api/auth_token.dart';

class FakeData {
  static final authenticated = StreamController<bool>.broadcast();

  static Future init() async {
    // onListen就要馬上廣播登入狀態，否則會視為未登入
    authenticated.onListen = () async {
      final sharedPreferences = await SharedPreferences.getInstance();
      authenticated.add(true);
    };
  }

  /// 驗證是否為登入狀態
  static Stream<bool> isAuthenticated() {
    return authenticated.stream;
  }

  static Future signIn(Account account) async {
    authenticated.add(true);
  }

  static Future signOut() async {
    authenticated.add(false);
  }
  
  /// Example
  static Future<List<SampleData>> getData() async {
    SampleData sample = SampleData(
        name: "First Item", 
        description: "Hello World!",
        user: User(id: 123, name: "Alice", profileImage: File(url: "https://d1hjkbq40fs2x4.cloudfront.net/2016-07-16/files/cat-sample_1313.jpg"), email: "a@gmail.com", createdTime: DateTime.now(), lastActive: DateTime.now()), 
        createdTime: DateTime.now(), 
        tags: ["cats", "cute"]
      );
    return [
      sample, sample, sample, sample, sample,
      sample, sample, sample, sample, sample,
      sample, sample, sample, sample, sample,
    ];
  }
}