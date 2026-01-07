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

import '../domain/model/MIGRATION_GUIDE.dart' as _i372;
import '../domain/repository/monster_repository.dart' as _i344;
import '../domain/usecase/attack_use_case.dart' as _i479;
import '../domain/usecase/defend_use_case.dart' as _i967;
import '../domain/usecase/flee_use_case.dart' as _i34;
import '../domain/usecase/inspect_use_case.dart' as _i216;
import '../domain/usecase/opponent_turn_use_case.dart' as _i207;
import '../domain/usecase/rest_use_case.dart' as _i52;
import '../presentation/bloc/game_bloc.dart' as _i713;
import '../service/process_action_use_case.dart' as _i84;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i372.ExampleRestUseCase>(() => _i372.ExampleRestUseCase());
    gh.factory<_i372.ExampleAttackUseCase>(() => _i372.ExampleAttackUseCase());
    gh.factory<_i479.AttackUseCase>(() => _i479.AttackUseCase());
    gh.factory<_i967.DefendUseCase>(() => _i967.DefendUseCase());
    gh.factory<_i34.FleeUseCase>(() => _i34.FleeUseCase());
    gh.factory<_i216.InspectUseCase>(() => _i216.InspectUseCase());
    gh.factory<_i207.OpponentTurnUseCase>(() => _i207.OpponentTurnUseCase());
    gh.factory<_i52.RestUseCase>(() => _i52.RestUseCase());
    gh.lazySingleton<_i344.MonsterRepository>(() => _i344.MonsterRepository());
    gh.factory<_i84.ProcessActionUseCase>(
      () => _i84.ProcessActionUseCase(
        gh<_i479.AttackUseCase>(),
        gh<_i967.DefendUseCase>(),
        gh<_i34.FleeUseCase>(),
        gh<_i52.RestUseCase>(),
        gh<_i216.InspectUseCase>(),
        gh<_i207.OpponentTurnUseCase>(),
      ),
    );
    gh.factory<_i713.GameBloc>(
      () => _i713.GameBloc(gh<_i84.ProcessActionUseCase>()),
    );
    return this;
  }
}
