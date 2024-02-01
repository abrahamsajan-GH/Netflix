import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/constants/api_fails.dart';
import 'package:netflix_clone/domain/downloads/downloads_api_cats.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';

part 'downloads_bloc.freezed.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final DownloadsApiCats downloadsApiCats;
  DownloadsBloc(this.downloadsApiCats) : super(DownloadsState.initial()) {
    on<_GetDownloadsData>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        downloadsFailORSuccess: none(),
      ));

      final Either<ApiFails, List<DownloadsModel>> downloadsData =
          await downloadsApiCats.getDownloadsData();
      emit(downloadsData.fold(
          (l) => state.copyWith(
              isLoading: false, downloadsFailORSuccess: Some(left(l))),
          (r) => state.copyWith(
              isLoading: false,
              downloads: r,
              downloadsFailORSuccess: Some(right(r)))));
    });
  }
}
