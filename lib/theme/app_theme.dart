import 'package:test_app/theme/theme.dart';

getThemeData<ThemeData>(String theme) {
  switch (theme) {
    case "Light":
      return lightTheme;
    case "Dark":
      return darkTheme;
    case "Luxury":
      return luxuryTheme;
    default:
      return lightTheme;
  }
}
