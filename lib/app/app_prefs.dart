import 'package:shared_preferences/shared_preferences.dart';
import 'package:tut_e_commerce_app/presentation/resources/language_manager.dart';

const String PRESS_KEY_LANG = "PRESS_KEY_LANG";

class AppPreferences {
  SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  Future<String> getAppLanguage() async {
    String? language = _sharedPreferences.getString(PRESS_KEY_LANG);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return LanguageType.ENGLISH.getValue();
    }
  }
}
