// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../game/cubit/game_bloc.dart' as _i137;
import '../game/data/monster_repository.dart' as _i285;
import '../game/service/process_action_use_case.dart' as _i404;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i404.ProcessActionUseCase>(() => _i404.ProcessActionUseCase());
    gh.lazySingleton<_i285.MonsterRepository>(() => _i285.MonsterRepository());
    gh.factory<_i137.GameBloc>(
      () => _i137.GameBloc(gh<_i404.ProcessActionUseCase>()),
    );
    return this;
  }
}
