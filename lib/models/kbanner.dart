import 'package:freezed_annotation/freezed_annotation.dart';
part 'kbanner.freezed.dart';

@freezed
class KBanner with _$KBanner {
  const factory KBanner(
      {required String id,
      required String title,
      required String imageUrl}) = _KBanner;
}
