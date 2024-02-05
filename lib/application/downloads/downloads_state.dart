part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<DownloadsModel> downloads,
    required Option<Either<ApiFails, List<DownloadsModel>>>
        downloadsFailORSuccess,
  }) = _DownloadsState;

  factory DownloadsState.initial() {
    return DownloadsState(
        isLoading: false, downloads: [], downloadsFailORSuccess: none());
  }
}
