import 'package:injectable/injectable.dart';
import '../core/injection/injector_container.dart';

import 'di.config.dart';

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
  externalPackageModulesBefore: [],
  externalPackageModulesAfter: [],
)
Future<void> configureDependencies() async => injector.init();
