import 'package:get_it/get_it.dart';
import 'package:scoreboard_app/widgets/king/service/player_state.dart';
import 'game_type_state.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerSingleton<PlayerState>(PlayerState());
  getIt.registerSingleton<GameTypeState>(GameTypeState());

// Alternatively you could write it if you don't like global variables
  // GetIt.I.registerSingleton<AppModel>(AppModel());
}
