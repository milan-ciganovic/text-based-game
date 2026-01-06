import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled1/di/di_init.config.dart';

final diContainer = GetIt.instance;

@InjectableInit(
  preferRelativeImports: true,
)
void configureDependencies() => diContainer.init();
