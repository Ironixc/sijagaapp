@JS()
library firebase;

import 'package:js/js.dart';
import 'dart:js_util' as js_util;

@JS('firebase.initializeApp')
external void initializeApp(dynamic config);

@JS('firebase.auth')
external Auth auth();

@JS()
@anonymous
class Auth {
  external dynamic signInAnonymously();
}

@JS()
@anonymous
class UserCredential {
  external User get user;
}

@JS()
@anonymous
class User {
  external String get uid;
}

Future<UserCredential> signInAnonymouslyAsync() {
  return js_util.promiseToFuture(auth().signInAnonymously());
}