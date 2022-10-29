import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_state.freezed.dart';
part 'post_state.g.dart';

class GeoPointConverter implements JsonConverter<GeoPoint, GeoPoint> {
  const GeoPointConverter();

  @override
  GeoPoint fromJson(GeoPoint geopoint) => geopoint;

  @override
  GeoPoint toJson(GeoPoint geopoint) => geopoint;
}

@freezed
class PostState with _$PostState {
  const factory PostState({
    @JsonKey(ignore: true) @Default('') String id,
    @Default('') String trackId,
    @GeoPointConverter() @Default(GeoPoint(0, 0)) GeoPoint latlng,
  }) = _PostState;

  factory PostState.fromJson(Map<String, dynamic> json) =>
      _$PostStateFromJson(json);

  factory PostState.fromDocument(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data()!;
    return PostState.fromJson(data).copyWith(id: doc.id);
  }
}
