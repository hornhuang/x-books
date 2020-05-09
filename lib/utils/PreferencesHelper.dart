import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

/*
 * 主题
 */
class MyTheme {

  static final String IS_DARK_THEME = 'is_dark_theme';

  static bool isDarkTheme = readTheme();

  static updateThme(bool isDarkTheme) async {
    MyTheme.isDarkTheme = isDarkTheme;
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(IS_DARK_THEME, isDarkTheme);
  }

  static readTheme() async {
    final prefs = await SharedPreferences.getInstance();
    isDarkTheme = prefs.getBool(IS_DARK_THEME) ?? false;
    return isDarkTheme;
  }

}

// // 人工智能
// var AI = 'AI';

// // 花卉
// var FLOWER = 'FLOWER';

// //经济学
// var ECONOMICS = 'ECONOMICS';

// // 水族
// var AQUARIUM = 'AQUARIUM';

// //哲学
// var PHILOSOPHY = 'PHILOSOPHY';

// // 历史
// var HISTORY = 'HISTORY';

// // 美食
// var CATE = 'CATE';

// // 旅游
// var TRAVEL = 'TRAVEL';

// // 育儿
// var PARENTING = 'PARENTING';

// // 心理学
// var PSYCHOLOGY = 'PSYCHOLOGY';

// Future<SharedPreferences> _getPref() async {
//   return await SharedPreferences.getInstance();
// }

// getAI() {
//   _getPref().then((value) {
//     value.getString(AI) ?? "";
//   });
// }

// getFLOWER() {
//   _getPref().then((value) {
//     value.getString(FLOWER) ?? "";
//   });
// }

// getECONOMICS() {
//   _getPref().then((value) {
//     value.getString(ECONOMICS) ?? "";
//   });
// }

// getAQUARIUM() {
//   _getPref().then((value) {
//     value.getString(AQUARIUM) ?? "";
//   });
// }

// getPHILOSOPHY() {
//   _getPref().then((value) {
//     value.getString(PHILOSOPHY) ?? "";
//   });
// }

// getHISTORY() {
//   _getPref().then((value) {
//     value.getString(HISTORY) ?? "";
//   });
// }

// getCATE() {
//   _getPref().then((value) {
//     value.getString(CATE) ?? "";
//   });
// }

// getTRAVEL() {
//   _getPref().then((value) {
//     value.getString(TRAVEL) ?? "";
//   });
// }

// getPARENTING() {
//   _getPref().then((value) {
//     value.getString(PARENTING) ?? "";
//   });
// }

// getPSYCHOLOGY() {
//   _getPref().then((value) {
//     value.getString(PSYCHOLOGY) ?? "";
//   });
// }

// // -----------------------

// setAI(var data) {
//   _getPref().then((value) {
//     value.setString(AI, data);
//   });
// }

// setFLOWER(var data) {
//   _getPref().then((value) {
//     value.setString(FLOWER, data);
//   });
// }

// setECONOMICS(var data) {
//   _getPref().then((value) {
//     value.setString(ECONOMICS, data);
//   });
// }

// setAQUARIUM(var data) {
//   _getPref().then((value) {
//     value.setString(AQUARIUM, data);
//   });
// }

// setPHILOSOPHY(var data) {
//   _getPref().then((value) {
//     value.setString(PHILOSOPHY, data);
//   });
// }

// setHISTORY(var data) {
//   _getPref().then((value) {
//     value.setString(HISTORY, data);
//   });
// }

// setCATE(var data) {
//   _getPref().then((value) {
//     value.setString(CATE, data);
//   });
// }

// setTRAVEL(var data) {
//   _getPref().then((value) {
//     value.setString(TRAVEL, data);
//   });
// }

// setPARENTING(var data) {
//   _getPref().then((value) {
//     value.setString(PARENTING, data);
//   });
// }

// setPSYCHOLOGY(var data) {
//   _getPref().then((value) {
//     value.setString(PSYCHOLOGY, data);
//   });
// }

// /*
//  * 当前用户信息
//  */
// var CURRENT_USER = 'CURRENT_USER';

// /*
//  * 历史 + 现在 suo'y
//  */
// var USERS = 'USERS';

// /*
//  * Map - 键值对
//  *
//  * key - value 键值对
//  */
// var USER_FAVORITES = 'USER_FAVORITES';

// setCURRENT_USER(var data) {
//   _getPref().then((value) {
//     value.setString(CURRENT_USER, data);
//   });
// }

// setUSERS(var data) {
//   _getPref().then((value) {
//     value.setString(USERS, data);
//   });
// }

// setUSER_FAVORITES(var data) {
//   _getPref().then((value) {
//     value.setString(USER_FAVORITES, data);
//   });
// }

// getCURRENT_USER() {
//   _getPref().then((value) {
//     value.getString(CURRENT_USER) ?? "";
//   });
// }

// getUSERS() {
//   _getPref().then((value) {
//     value.getString(USERS) ?? "";
//   });
// }

// getUSER_FAVORITES() {
//   _getPref().then((value) {
//     value.getString(USER_FAVORITES) ?? "";
//   });
// }

// // -----------------------------

// var SEARCH_HISTORY = 'SEARCH_HISTORY';

// setSEARCH_HISTORY(var data) {
//   _getPref().then((value) {
//     value.setString(SEARCH_HISTORY, data);
//   });
// }

// getSEARCH_HISTORY() {
//   _getPref().then((value) {
//     return value.getString(SEARCH_HISTORY) ?? "";
//   });
// }

// //-----------------------

// /*
//  * History
//  */
// addHistory(String value) {
//   String info = getSEARCH_HISTORY() ?? "";
//   List histories = [];
//   if (info.length == 0) {
//     histories.add(value.toString());
//   } else {
//     histories = json.decode(info);
//     if (histories.length == 10) {
//       histories.removeAt(9);
//     }
//     histories.add(value.toString());
//   }
//   addH(json.encode(histories).toString());
//   print("json.encode(histories)--------------------------");
//   print("-----" +
//       json.encode(histories).toString() +
//       "---->" +
//       getH().toString());
// }

// Future<void> _incrementCounter() async {
//   final SharedPreferences prefs = await _prefs;
//   final int counter = (prefs.getInt('counter') ?? 0) + 1;

//   setState(() {
//     _counter = prefs.setInt("counter", counter).then((bool success) {
//       return counter;
//     });
//   });
// }

// Future<String> getH() async {
//   final prefs = await SharedPreferences.getInstance();

// // Try reading data from the counter key. If it does not exist, return 0.
//   final counter = prefs.getString('counter').toString() ?? "";
// }

// addH(counter) async {
//   final prefs = await SharedPreferences.getInstance();

// // set value
//   prefs.setString('counter', counter.toString());
// }

// List<String> getHistories() {
//   deleteH();
//   getH().then((value) {
//     print("info--------------------------------------------");
//     print(value);
//     return value.toString().length != 0 ? json.decode(value.toString()) : [];
//   });
// }

// deleteH() async {
//   print('----------++++++++++++++++++++++++++++++----------');
//   final prefs = await SharedPreferences.getInstance();
//   prefs.remove('counter');
// }

// // ----------------------------

// /*
//  * USER favorites
//  */
// List getFavoritesByUser(String userid) {
//   String user_favorites = getUSER_FAVORITES() ?? "";
//   if (user_favorites.length == 0) return [];
//   Map<String, List> user_fmap = json.decode(user_favorites);
//   if (user_fmap[userid] == null || user_fmap[userid].length == 0)
//     return [];
//   else
//     return user_fmap[userid];
// }

// addUserFavorite(String userid) {}
