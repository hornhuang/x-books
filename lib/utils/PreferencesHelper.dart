import 'package:shared_preferences/shared_preferences.dart';

var AI = 'AI';

var FLOWER = 'FLOWER';

var ECONOMICS = 'ECONOMICS';

var AQUARIUM = 'AQUARIUM';

var PHILOSOPHY = 'PHILOSOPHY';

var HISTORY = 'HISTORY';

var CATE = 'CATE';

var TRAVEL = 'TRAVEL';

var PARENTING = 'PARENTING';

var PSYCHOLOGY = 'PSYCHOLOGY';

Future<SharedPreferences> _getPref() async{
  return await SharedPreferences.getInstance();
}

getAI(var data) {
  _getPref().then((value){value.getString(AI)??"";});
}

getFLOWER(var data) {
  _getPref().then((value){value.getString(FLOWER)??"";});
}

getECONOMICS(var data) {
  _getPref().then((value){value.getString(ECONOMICS)??"";});
}

getAQUARIUM(var data) {
  _getPref().then((value){value.getString(AQUARIUM)??"";});
}

getPHILOSOPHY(var data) {
  _getPref().then((value){value.getString(PHILOSOPHY)??"";});
}

getHISTORY(var data) {
  _getPref().then((value){value.getString(HISTORY)??"";});
}

getCATE(var data) {
  _getPref().then((value){value.getString(CATE)??"";});
}

getTRAVEL(var data) {
  _getPref().then((value){value.getString(TRAVEL)??"";});
}

getPARENTING(var data) {
  _getPref().then((value){value.getString(PARENTING)??"";});
}

getPSYCHOLOGY(var data) {
  _getPref().then((value){value.getString(PSYCHOLOGY)??"";});
}

// -----------------------



setAI(var data) {
  _getPref().then((value){value.setString(AI, data);});
}

setFLOWER(var data) {
  _getPref().then((value){value.setString(FLOWER, data);});
}

setECONOMICS(var data) {
  _getPref().then((value){value.setString(ECONOMICS, data);});
}

setAQUARIUM(var data) {
  _getPref().then((value){value.setString(AQUARIUM, data);});
}

setPHILOSOPHY(var data) {
  _getPref().then((value){value.setString(PHILOSOPHY, data);});
}

setHISTORY(var data) {
  _getPref().then((value){value.setString(HISTORY, data);});
}

setCATE(var data) {
  _getPref().then((value){value.setString(CATE, data);});
}

setTRAVEL(var data) {
  _getPref().then((value){value.setString(TRAVEL, data);});
}

setPARENTING(var data) {
  _getPref().then((value){value.setString(PARENTING, data);});
}

setPSYCHOLOGY(var data) {
  _getPref().then((value){value.setString(PSYCHOLOGY, data);});
}

/**
 * 当前用户信息
 */
var CURRENT_USER = 'CURRENT_USER';

/**
 * 历史 + 现在 suo'y
 */
var USERS = 'USERS';

/**
 * Map - 键值对
 * 
 * key - value 键值对
 */
var USER_FAVORITES = 'USER_FAVORITES';

setCURRENT_USER(var data) {
  _getPref().then((value){value.setString(CURRENT_USER, data);});
}

setUSERS(var data) {
  _getPref().then((value){value.setString(USERS, data);});
}

setUSER_FAVORITES(var data) {
  _getPref().then((value){value.setString(USER_FAVORITES, data);});
}

getCURRENT_USER(var data) {
  _getPref().then((value){value.getString(CURRENT_USER)??"";});
}

getUSERS(var data) {
  _getPref().then((value){value.getString(USERS)??"";});
}

getUSER_FAVORITES(var data) {
  _getPref().then((value){value.getString(USER_FAVORITES)??"";});
}