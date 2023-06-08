import 'package:get_storage/get_storage.dart';
import 'package:nosql_database/model/account.dart';
import 'package:nosql_database/model/user.dart';

class GetService {
  static var box = GetStorage();

  static void storeUser(User user) async {
    box.write('user', user.toJson());
  }

  static User loadUser() => User.fromJson(box.read('user'));

  static void removeUser() async {
    box.remove('user');
  }

  static void storeAccount(Account account) async {
    box.write('account', account.toJson());
  }

  static Account loadAccount() => Account.fromJson(box.read('account'));

  static void removeAccount() async {
    box.remove('account');
  }
}
