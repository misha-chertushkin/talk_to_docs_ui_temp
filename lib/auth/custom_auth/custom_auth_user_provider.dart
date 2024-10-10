import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class Talk2DocsAuthUser {
  Talk2DocsAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<Talk2DocsAuthUser> talk2DocsAuthUserSubject =
    BehaviorSubject.seeded(Talk2DocsAuthUser(loggedIn: false));
Stream<Talk2DocsAuthUser> talk2DocsAuthUserStream() => talk2DocsAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
