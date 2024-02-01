// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:netflix_clone/application/downloads/downloads_bloc.dart' as _i5;
import 'package:netflix_clone/domain/downloads/downloads_api_cats.dart' as _i3;
import 'package:netflix_clone/infrastructure/downloads/downloads_data.dart'
    as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.DownloadsApiCats>(() => _i4.DownloadsData());
    gh.factory<_i5.DownloadsBloc>(
        () => _i5.DownloadsBloc(gh<_i3.DownloadsApiCats>()));
    return this;
  }
}
