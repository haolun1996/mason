import 'package:flutter/material.dart';

import 'package:baseX/base_x.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:{{project_name.snakeCase()}}/app/constant/app_constant.dart';
import 'package:{{project_name.snakeCase()}}/app/constant/share_pref.dart';
import 'package:{{project_name.snakeCase()}}/app/routes/app_routes.dart';
import 'package:{{project_name.snakeCase()}}/app/theme.dart';
import 'package:{{project_name.snakeCase()}}/app/ui/example/example_binding.dart';
import 'package:{{project_name.snakeCase()}}/app/ui/example/example_page.dart';
import 'package:{{project_name.snakeCase()}}/app/ui/nav_bar_bottom/nav_bar.dart';
import 'package:{{project_name.snakeCase()}}/app/ui/nav_bar_bottom/nav_binding.dart';

void main() {
  runXApp(
    title: 'BaseX Test',
    currentEnv: Environment.Staging,
    staginBaseUrl: 'http://192.168.68.116:8080/api',
    liveBaseUrl: 'http://192.168.68.116:8080/api',
    // required200: true,
    // requireSharePref: true,
    sharedPref: () async {
      S = AppSharedPref(await SharedPreferences.getInstance());
      X = S!;
    },
    themeMode: ThemeMode.system,
    onFailed: (context, code, msg, {tryAgain}) {
      return false;
    },
    lightTheme: AppTheme.lightTheme,
    darkTheme: AppTheme.darkTheme,
    getPages: AppPages.routes,
    initialPage: NavBar(),
    initialBinding: NavBarBinding(),
    constantConfig: AppConstant(),
    // langController: LanguageController(),
    // firebaseNotificationController: PushNotitificationController(),
    // additionalFunction: () {},
    // additionalWidget: (materialApp) => materialApp,
    // customHttp: BaseXHttpImp(),
  );
}
