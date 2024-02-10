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
import 'package:netflix_clone/application/home/home_bloc.dart' as _i12;
import 'package:netflix_clone/application/new_and_hot/new_and_hot_bloc.dart'
    as _i13;
import 'package:netflix_clone/application/search/search_bloc.dart' as _i14;
import 'package:netflix_clone/domain/downloads/downloads_api_cats.dart' as _i3;
import 'package:netflix_clone/domain/home/home_service.dart' as _i6;
import 'package:netflix_clone/domain/new_and_hot/n_and_h_service.dart' as _i8;
import 'package:netflix_clone/domain/search/search_service.dart' as _i10;
import 'package:netflix_clone/infrastructure/downloads/downloads_data.dart'
    as _i4;
import 'package:netflix_clone/infrastructure/home/home_data.dart' as _i7;
import 'package:netflix_clone/infrastructure/new_and_hot/n_and_h_data.dart'
    as _i9;
import 'package:netflix_clone/infrastructure/search/search_data.dart' as _i11;

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
    gh.lazySingleton<_i6.HomeService>(() => _i7.HomeDataImp());
    gh.lazySingleton<_i8.NewAndHotService>(() => _i9.NewAndHotImp());
    gh.lazySingleton<_i10.SearchService>(() => _i11.SearchData());
    gh.factory<_i12.HomeBloc>(() => _i12.HomeBloc(gh<_i6.HomeService>()));
    gh.factory<_i13.NewAndHotBloc>(
        () => _i13.NewAndHotBloc(gh<_i8.NewAndHotService>()));
    gh.factory<_i14.SearchBloc>(() => _i14.SearchBloc(
          gh<_i3.DownloadsApiCats>(),
          gh<_i10.SearchService>(),
        ));
    return this;
  }
}
