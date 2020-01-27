import 'package:cloud_to_do_list/stores/tasks_store.dart';

import 'account_store.dart';

class RootStore {
   AccountStore accountStore;
   TasksStore tasksStore;

  RootStore() {
    this.accountStore = AccountStore(this);
    this.tasksStore = TasksStore(this);
  }
}
