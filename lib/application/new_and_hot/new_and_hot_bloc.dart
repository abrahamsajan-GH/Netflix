import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/constants/api_fails.dart';
import 'package:netflix_clone/domain/new_and_hot/model/new_and_hot.dart';
import 'package:netflix_clone/domain/new_and_hot/n_and_h_service.dart';

part 'new_and_hot_bloc.freezed.dart';
part 'new_and_hot_event.dart';
part 'new_and_hot_state.dart';

@injectable
class NewAndHotBloc extends Bloc<NewAndHotEvent, NewAndHotState> {
  final NewAndHotService _newAndHotService;
  NewAndHotBloc(this._newAndHotService) : super(NewAndHotState.initial()) {
    on<InitializeComingSoon>((event, emit) async {
      emit(const NewAndHotState(
        comingSoonList: [],
        everyonesWatchingList: [],
        isLoading: true,
        isError: false,
      ));
      final result = await _newAndHotService.comingSoon();
      final newState = result.fold((ApiFails l) {
        return const NewAndHotState(
          comingSoonList: [],
          everyonesWatchingList: [],
          isLoading: false,
          isError: true,
        );
      }, (NewAndHot r) {
        return NewAndHotState(
          comingSoonList: r.results ?? [],
          everyonesWatchingList: state.everyonesWatchingList,
          isLoading: false,
          isError: false,
        );
      });
      emit(newState);
    });

    on<InitializeEveryonesWatching>((event, emit) async {
      emit(const NewAndHotState(
        comingSoonList: [],
        everyonesWatchingList: [],
        isLoading: true,
        isError: false,
      ));
      final result = await _newAndHotService.everyonesWatching();
      final newState = result.fold((ApiFails l) {
        return const NewAndHotState(
          comingSoonList: [],
          everyonesWatchingList: [],
          isLoading: false,
          isError: true,
        );
      }, (NewAndHot r) {
        return NewAndHotState(
          comingSoonList: state.comingSoonList,
          everyonesWatchingList: r.results ?? [],
          isLoading: false,
          isError: false,
        );
      });
      emit(newState);
    });
  }
}
