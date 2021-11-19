import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FaarunFormFirebaseUser {
  FaarunFormFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

FaarunFormFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FaarunFormFirebaseUser> faarunFormFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FaarunFormFirebaseUser>(
            (user) => currentUser = FaarunFormFirebaseUser(user));
