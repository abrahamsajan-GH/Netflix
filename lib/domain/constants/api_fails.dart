import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_fails.freezed.dart';

@freezed
class ApiFails with _$ApiFails {
  const factory ApiFails.clientFails() = _clientFails;
  const factory ApiFails.serverFails() = _serverFails;
}
