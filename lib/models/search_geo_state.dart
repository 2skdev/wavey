import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:osm_nominatim/osm_nominatim.dart';

part 'search_geo_state.freezed.dart';

@freezed
class SearchGeoState with _$SearchGeoState {
  const factory SearchGeoState({
    @Default('') String query,
    @Default(<Place>[]) List<Place> result,
  }) = _SearchGeoState;
}
