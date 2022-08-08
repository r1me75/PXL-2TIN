/*
 * ATTENTION: The "eval" devtool has been used (maybe by default in mode: "development").
 * This devtool is neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
/******/ (() => { // webpackBootstrap
/******/ 	"use strict";
/******/ 	var __webpack_modules__ = ({

/***/ "./src/js/app.js":
/*!***********************!*\
  !*** ./src/js/app.js ***!
  \***********************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _users_User__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./users/User */ \"./src/js/users/User.js\");\n/* harmony import */ var _shopping_Item__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./shopping/Item */ \"./src/js/shopping/Item.js\");\n/* harmony import */ var _shopping_ShoppingCart__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./shopping/ShoppingCart */ \"./src/js/shopping/ShoppingCart.js\");\n\n\n\n\n\nwindow.addEventListener('load', function (event) {\n  var user = new _users_User__WEBPACK_IMPORTED_MODULE_0__[\"default\"]('geert');\n  var item = new _shopping_Item__WEBPACK_IMPORTED_MODULE_1__[\"default\"](1, 2.333);\n  var item2 = new _shopping_Item__WEBPACK_IMPORTED_MODULE_1__[\"default\"](2, 3.32);\n  var shoppingCart = new _shopping_ShoppingCart__WEBPACK_IMPORTED_MODULE_2__[\"default\"](user);\n  shoppingCart.addItem(item);\n  shoppingCart.addItem(item);\n  shoppingCart.addItem(item2);\n  var preElement = document.createElement(\"pre\");\n  var textNode = document.createTextNode(shoppingCart.toString());\n  preElement.appendChild(textNode);\n  document.getElementById('output').appendChild(preElement);\n});\n\n//# sourceURL=webpack:///./src/js/app.js?");

/***/ }),

/***/ "./src/js/shopping/Item.js":
/*!*********************************!*\
  !*** ./src/js/shopping/Item.js ***!
  \*********************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": () => (/* binding */ Item)\n/* harmony export */ });\n // naam: Emir Ozdemir\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }\n\nfunction _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, \"prototype\", { writable: false }); return Constructor; }\n\nvar Item = /*#__PURE__*/function () {\n  function Item(id, price) {\n    _classCallCheck(this, Item);\n\n    this._id = id;\n    this._price = price;\n  }\n\n  _createClass(Item, [{\n    key: \"getPrice\",\n    value: function getPrice() {\n      return this._price;\n    }\n  }, {\n    key: \"toString\",\n    value: function toString() {\n      return \"\".concat(this._id, \"_\").concat(this._price);\n    }\n  }]);\n\n  return Item;\n}();\n\n\n\n//# sourceURL=webpack:///./src/js/shopping/Item.js?");

/***/ }),

/***/ "./src/js/shopping/ShoppingCart.js":
/*!*****************************************!*\
  !*** ./src/js/shopping/ShoppingCart.js ***!
  \*****************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": () => (/* binding */ ShoppingCart)\n/* harmony export */ });\n/* harmony import */ var _users_User__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../users/User */ \"./src/js/users/User.js\");\n // naam: Emir Ozdemir\n\nfunction _createForOfIteratorHelper(o, allowArrayLike) { var it = typeof Symbol !== \"undefined\" && o[Symbol.iterator] || o[\"@@iterator\"]; if (!it) { if (Array.isArray(o) || (it = _unsupportedIterableToArray(o)) || allowArrayLike && o && typeof o.length === \"number\") { if (it) o = it; var i = 0; var F = function F() {}; return { s: F, n: function n() { if (i >= o.length) return { done: true }; return { done: false, value: o[i++] }; }, e: function e(_e) { throw _e; }, f: F }; } throw new TypeError(\"Invalid attempt to iterate non-iterable instance.\\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.\"); } var normalCompletion = true, didErr = false, err; return { s: function s() { it = it.call(o); }, n: function n() { var step = it.next(); normalCompletion = step.done; return step; }, e: function e(_e2) { didErr = true; err = _e2; }, f: function f() { try { if (!normalCompletion && it[\"return\"] != null) it[\"return\"](); } finally { if (didErr) throw err; } } }; }\n\nfunction _unsupportedIterableToArray(o, minLen) { if (!o) return; if (typeof o === \"string\") return _arrayLikeToArray(o, minLen); var n = Object.prototype.toString.call(o).slice(8, -1); if (n === \"Object\" && o.constructor) n = o.constructor.name; if (n === \"Map\" || n === \"Set\") return Array.from(o); if (n === \"Arguments\" || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n)) return _arrayLikeToArray(o, minLen); }\n\nfunction _arrayLikeToArray(arr, len) { if (len == null || len > arr.length) len = arr.length; for (var i = 0, arr2 = new Array(len); i < len; i++) { arr2[i] = arr[i]; } return arr2; }\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }\n\nfunction _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, \"prototype\", { writable: false }); return Constructor; }\n\n\n\nvar ShoppingCart = /*#__PURE__*/function () {\n  function ShoppingCart(user) {\n    _classCallCheck(this, ShoppingCart);\n\n    if (!(user instanceof _users_User__WEBPACK_IMPORTED_MODULE_0__[\"default\"])) {\n      throw new Error(\"de parameter user is geen object van de klasse User\");\n    }\n\n    this._user = user;\n    this._items = [];\n  }\n\n  _createClass(ShoppingCart, [{\n    key: \"calculatePrice\",\n    value: function calculatePrice() {\n      var sum = 0;\n\n      var _iterator = _createForOfIteratorHelper(this._items),\n          _step;\n\n      try {\n        for (_iterator.s(); !(_step = _iterator.n()).done;) {\n          var item = _step.value;\n          sum += item.getPrice();\n        }\n      } catch (err) {\n        _iterator.e(err);\n      } finally {\n        _iterator.f();\n      }\n\n      return sum;\n    }\n  }, {\n    key: \"addItem\",\n    value: function addItem(item) {\n      this._items.push(item);\n    }\n  }, {\n    key: \"toString\",\n    value: function toString() {\n      // Gebruikt default .toString();\n      return \"\".concat(this._user, \" [\").concat(this._items.join(\",\"), \"]\");\n    }\n  }]);\n\n  return ShoppingCart;\n}();\n\n\n\n//# sourceURL=webpack:///./src/js/shopping/ShoppingCart.js?");

/***/ }),

/***/ "./src/js/users/User.js":
/*!******************************!*\
  !*** ./src/js/users/User.js ***!
  \******************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": () => (/* binding */ User)\n/* harmony export */ });\n // naam: Emir Ozdemir\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }\n\nfunction _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, \"prototype\", { writable: false }); return Constructor; }\n\nvar User = /*#__PURE__*/function () {\n  function User(name) {\n    _classCallCheck(this, User);\n\n    if (typeof name == 'string' && name.length > 3) {\n      this._name = name;\n    }\n  }\n\n  _createClass(User, [{\n    key: \"toString\",\n    value: function toString() {\n      return \"(\".concat(this._name, \")\");\n    }\n  }]);\n\n  return User;\n}();\n\n\n\n//# sourceURL=webpack:///./src/js/users/User.js?");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/define property getters */
/******/ 	(() => {
/******/ 		// define getter functions for harmony exports
/******/ 		__webpack_require__.d = (exports, definition) => {
/******/ 			for(var key in definition) {
/******/ 				if(__webpack_require__.o(definition, key) && !__webpack_require__.o(exports, key)) {
/******/ 					Object.defineProperty(exports, key, { enumerable: true, get: definition[key] });
/******/ 				}
/******/ 			}
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/hasOwnProperty shorthand */
/******/ 	(() => {
/******/ 		__webpack_require__.o = (obj, prop) => (Object.prototype.hasOwnProperty.call(obj, prop))
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/make namespace object */
/******/ 	(() => {
/******/ 		// define __esModule on exports
/******/ 		__webpack_require__.r = (exports) => {
/******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 			}
/******/ 			Object.defineProperty(exports, '__esModule', { value: true });
/******/ 		};
/******/ 	})();
/******/ 	
/************************************************************************/
/******/ 	
/******/ 	// startup
/******/ 	// Load entry module and return exports
/******/ 	// This entry module can't be inlined because the eval devtool is used.
/******/ 	var __webpack_exports__ = __webpack_require__("./src/js/app.js");
/******/ 	
/******/ })()
;