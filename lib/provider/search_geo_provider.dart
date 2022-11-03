import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:osm_nominatim/osm_nominatim.dart';

import '../models/search_geo_state.dart';

class SearchGeoStateNotifier extends StateNotifier<SearchGeoState> {
  SearchGeoStateNotifier() : super(const SearchGeoState());

  // ignore: avoid_setters_without_getters
  set query(String value) {
    Nominatim.searchByName(query: value, limit: 5).then(
      (result) => state = state.copyWith(result: result),
    );

    state = state.copyWith(query: value);
  }
}

final searchGeoStateNotifier =
    StateNotifierProvider<SearchGeoStateNotifier, SearchGeoState>(
  (_) => SearchGeoStateNotifier(),
);
