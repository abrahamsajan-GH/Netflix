part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotEvent with _$NewAndHotEvent {
  const factory NewAndHotEvent.initializeComingSoon() = InitializeComingSoon;
  const factory NewAndHotEvent.initializeEveryonesWatching() =
      InitializeEveryonesWatching;
}
