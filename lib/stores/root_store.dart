import 'account_store.dart';

class RootStore {
  AccountStore accountStore;

  RootStore() {
    this.accountStore = new AccountStore(this);
  }
}
