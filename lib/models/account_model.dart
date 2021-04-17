import 'package:flutter/cupertino.dart';

class Account {
  final int account_id;
  final String accont_realname;
  final String account_name;
  final String accoutn_bio;
  final String account_birthdate;
  final String profile_photo_1;
  final String profile_photo_2;
  final String profile_photo_3;

  Account({
    @required this.account_id,
    @required this.accont_realname,
    @required this.account_name,
    @required this.accoutn_bio,
    @required this.account_birthdate,
    @required this.profile_photo_1,
    @required this.profile_photo_2,
    @required this.profile_photo_3,
  });
}
