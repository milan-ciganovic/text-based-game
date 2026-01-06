import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di_init.config.dart';

final diContainer = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() => diContainer.init();
