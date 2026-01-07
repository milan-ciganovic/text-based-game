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
import '../game/service/process_action_use_case.dart' as _i922;
import '../game/use_cases/attack_use_case.dart' as _i260;
import '../game/use_cases/defend_use_case.dart' as _i662;
import '../game/use_cases/flee_use_case.dart' as _i597;
import '../game/use_cases/inspect_use_case.dart' as _i696;
import '../game/use_cases/opponent_turn_use_case.dart' as _i603;
import '../game/use_cases/rest_use_case.dart' as _i654;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i260.AttackUseCase>(() => _i260.AttackUseCase());
    gh.factory<_i662.DefendUseCase>(() => _i662.DefendUseCase());
    gh.factory<_i597.FleeUseCase>(() => _i597.FleeUseCase());
    gh.factory<_i696.InspectUseCase>(() => _i696.InspectUseCase());
    gh.factory<_i603.OpponentTurnUseCase>(() => _i603.OpponentTurnUseCase());
    gh.factory<_i654.RestUseCase>(() => _i654.RestUseCase());
    gh.lazySingleton<_i285.MonsterRepository>(() => _i285.MonsterRepository());
    gh.factory<_i922.ProcessActionUseCase>(
      () => _i922.ProcessActionUseCase(
        gh<_i260.AttackUseCase>(),
        gh<_i662.DefendUseCase>(),
        gh<_i597.FleeUseCase>(),
        gh<_i654.RestUseCase>(),
        gh<_i696.InspectUseCase>(),
        gh<_i603.OpponentTurnUseCase>(),
      ),
    );
    gh.factory<_i137.GameBloc>(
      () => _i137.GameBloc(gh<_i922.ProcessActionUseCase>()),
    );
    return this;
  }
}
