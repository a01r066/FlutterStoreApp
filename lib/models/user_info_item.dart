import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_item.freezed.dart';

@freezed
class UserInfoItem with _$UserInfoItem {
  const UserInfoItem._();
  factory UserInfoItem({required String title, required String subTitle, required IconData iconData}) = _UserInfoItem;
}