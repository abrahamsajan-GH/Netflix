part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotState with _$NewAndHotState {
  const factory NewAndHotState({
    required List<NewAndHotData> comingSoonList,
    required List<NewAndHotData> everyonesWatchingList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;
  factory NewAndHotState.initial() => const NewAndHotState(
        comingSoonList: [],
        everyonesWatchingList: [],
        isLoading: false,
        isError: false,
      );
}
