import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'root_store.dart';

part 'account_store.g.dart';

class AccountStore = _AccountStore with _$AccountStore;

abstract class _AccountStore with Store {
  RootStore rootStore;
  List<Function> _disposers = [];

  _AccountStore(this.rootStore) {
    _disposers.add(reaction((_) => this.userFuture.value, (FirebaseUser user) {
      if (user != null) rootStore.tasksStore.syncTasks(user);
    }));
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email', 'https://www.googleapis.com/auth/contacts.readonly'],
      hostedDomain: "",
      clientId: "");

  @observable
  ObservableFuture<FirebaseUser> userFuture = ObservableFuture.value(null);

  @computed
  FirebaseUser get user => userFuture.value;

  @action
  login(LoginType loginType) {
    switch (loginType) {
      case LoginType.GOOGLE:
        userFuture = ObservableFuture(_googleLogin());
        break;
      case LoginType.FACEBOOK:
        {}
        break;
      case LoginType.TWITTER:
        {}
        break;
    }
  }

  @action
  logout() {
    _googleSignIn.signOut().then((_) {
      userFuture = ObservableFuture(_auth.signOut());
    });
  }

  Future<FirebaseUser> _googleLogin() async {
    try {
      final GoogleSignInAccount googleSignInAccount =
          await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final AuthResult authResult =
          await _auth.signInWithCredential(credential);
      final FirebaseUser _user = authResult.user;

      assert(!_user.isAnonymous);
      assert(await _user.getIdToken() != null);

      final FirebaseUser currentUser = await _auth.currentUser();
      assert(_user.uid == currentUser.uid);

      return currentUser;
    } catch (e) {
      print(e);
      return null;
    }
  }

  // _dispose() {
  //   _disposers.forEach((d) => d());
  // }
}

enum LoginType { GOOGLE, FACEBOOK, TWITTER }
