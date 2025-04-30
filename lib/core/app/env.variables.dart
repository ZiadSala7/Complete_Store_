import 'package:flutter_dotenv/flutter_dotenv.dart';

// enum to the types of env
enum EnvTypeEnum { dev, prod }

class EnvVariables {
  EnvVariables._();
  String _envType = '';

  // make a singleton object
  static final instance = EnvVariables._();

  // to switch the env type
  Future<void> initEnv({required EnvTypeEnum envType}) async {
    switch (envType) {
      case EnvTypeEnum.dev: // switch to dev mode
        await dotenv.load(fileName: '.env.dev');
      case EnvTypeEnum.prod: // switch to prod mode
        await dotenv.load(fileName: '.env.prod');
    }
    _envType = dotenv.get('ENV_TYPE');
  }

  // getter
  String get envType => _envType;
}
