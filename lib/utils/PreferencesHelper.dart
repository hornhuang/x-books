import 'package:shared_preferences/shared_preferences.dart';

// 人工智能
var AI = 'AI';

// 花卉
var FLOWER = 'FLOWER';

//经济学
var ECONOMICS = 'ECONOMICS';

// 水族
var AQUARIUM = 'AQUARIUM';

//哲学
var PHILOSOPHY = 'PHILOSOPHY';

// 历史
var HISTORY = 'HISTORY';

// 美食
var CATE = 'CATE';

// 旅游
var TRAVEL = 'TRAVEL';

// 育儿
var PARENTING = 'PARENTING';

// 心理学
var PSYCHOLOGY = 'PSYCHOLOGY';

Future<SharedPreferences> _getPref() async{
  return await SharedPreferences.getInstance();
}

getAI() {
  _getPref().then((value){value.getString(AI)??"";});
}

getFLOWER() {
  _getPref().then((value){value.getString(FLOWER)??"";});
}

getECONOMICS() {
  _getPref().then((value){value.getString(ECONOMICS)??"";});
}

getAQUARIUM() {
  _getPref().then((value){value.getString(AQUARIUM)??"";});
}

getPHILOSOPHY() {
  _getPref().then((value){value.getString(PHILOSOPHY)??"";});
}

getHISTORY() {
  _getPref().then((value){value.getString(HISTORY)??"";});
}

getCATE() {
  _getPref().then((value){value.getString(CATE)??"";});
}

getTRAVEL() {
  _getPref().then((value){value.getString(TRAVEL)??"";});
}

getPARENTING() {
  _getPref().then((value){value.getString(PARENTING)??"";});
}

getPSYCHOLOGY() {
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

/*
 * 当前用户信息
 */
var CURRENT_USER = 'CURRENT_USER';

/*
 * 历史 + 现在 suo'y
 */
var USERS = 'USERS';

/*
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

getCURRENT_USER() {
  _getPref().then((value){value.getString(CURRENT_USER)??"";});
}

getUSERS() {
  _getPref().then((value){value.getString(USERS)??"";});
}

getUSER_FAVORITES() {
  _getPref().then((value){value.getString(USER_FAVORITES)??"";});
}

// -----------------------------

var SEARCH_HISTORY = 'SEARCH_HISTORY';

setSEARCH_HISTORY(var data) {
  _getPref().then((value){value.setString(SEARCH_HISTORY, data);});
}

getSEARCH_HISTORY() {
  _getPref().then((value){value.getString(SEARCH_HISTORY)??"";});
}