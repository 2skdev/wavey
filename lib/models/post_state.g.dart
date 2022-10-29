// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostState _$$_PostStateFromJson(Map<String, dynamic> json) => _$_PostState(
      trackId: json['trackId'] as String? ?? '',
      latlng: json['latlng'] == null
          ? const GeoPoint(0, 0)
          : const GeoPointConverter().fromJson(json['latlng'] as GeoPoint),
    );

Map<String, dynamic> _$$_PostStateToJson(_$_PostState instance) =>
    <String, dynamic>{
      'trackId': instance.trackId,
      'latlng': const GeoPointConverter().toJson(instance.latlng),
    };
