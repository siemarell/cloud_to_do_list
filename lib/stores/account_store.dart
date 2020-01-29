import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'root_store.dart';

part 'account_store.g.dart';

class AccountStore = _AccountStore with _$AccountStore;

abstract class _AccountStore with Store {
  RootStore rootStore;

  _AccountStore(this.rootStore);

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @observable
  ObservableFuture<FirebaseUser> user = ObservableFuture.value(null);

  @action
  login(LoginType loginType) async {
    switch (loginType) {
      case LoginType.GOOGLE:
        user = ObservableFuture(_googleLogin());
        rootStore.tasksStore.syncTasks();
        break;
      case LoginType.FACEBOOK:
        {}
        break;
      case LoginType.TWITTER:
        {}
        break;
    }
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
      final FirebaseUser user = authResult.user;

      assert(!user.isAnonymous);
      assert(await user.getIdToken() != null);

      final FirebaseUser currentUser = await _auth.currentUser();
      assert(user.uid == currentUser.uid);

      return currentUser;
    } catch (e) {
      print(e);
      return null;
    }
  }
}

enum LoginType { GOOGLE, FACEBOOK, TWITTER }
