/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./src/js/app.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./src/js/app.js":
/*!***********************!*\
  !*** ./src/js/app.js ***!
  \***********************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";
eval("\n\nvar _Point = __webpack_require__(/*! ./drawing/Point */ \"./src/js/drawing/Point.js\");\n\nvar _Point2 = _interopRequireDefault(_Point);\n\nvar _Line = __webpack_require__(/*! ./drawing/Line */ \"./src/js/drawing/Line.js\");\n\nvar _Line2 = _interopRequireDefault(_Line);\n\nfunction _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }\n\nvar point1 = new _Point2.default(1, 2);\nvar point2 = new _Point2.default(2, 3);\nconsole.log(point1.toString());\nconsole.log(point2.toString());\nconsole.log(new _Line2.default(point1, point2).toString());\n\ntry {\n\tconsole.log(new _Line2.default(1, point2).toString());\n} catch (e) {\n\tconsole.log(e);\n}\n\n//# sourceURL=webpack:///./src/js/app.js?");

/***/ }),

/***/ "./src/js/drawing/Line.js":
/*!********************************!*\
  !*** ./src/js/drawing/Line.js ***!
  \********************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";
eval("\n\nObject.defineProperty(exports, \"__esModule\", {\n    value: true\n});\n\nvar _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();\n\nvar _Point = __webpack_require__(/*! ./Point */ \"./src/js/drawing/Point.js\");\n\nvar _Point2 = _interopRequireDefault(_Point);\n\nfunction _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nvar Line = function () {\n    function Line(point1, point2) {\n        _classCallCheck(this, Line);\n\n        if (!(point1 instanceof _Point2.default)) {\n            throw new Error(\"point1 not a point\");\n        }\n        if (!(point2 instanceof _Point2.default)) {\n            throw new Error(\"point2 not a point\");\n        }\n        this._point1 = point1;\n        this._point2 = point2;\n    }\n\n    _createClass(Line, [{\n        key: \"toString\",\n        value: function toString() {\n            return \"Line \" + this._point1.toString() + \"-\" + this._point2.toString();\n        }\n    }, {\n        key: \"point1\",\n        get: function get() {\n            return this._point1;\n        }\n    }, {\n        key: \"point2\",\n        get: function get() {\n            return this._point2;\n        }\n    }]);\n\n    return Line;\n}();\n\nexports.default = Line;\n\n//# sourceURL=webpack:///./src/js/drawing/Line.js?");

/***/ }),

/***/ "./src/js/drawing/Point.js":
/*!*********************************!*\
  !*** ./src/js/drawing/Point.js ***!
  \*********************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";
eval("\n\nObject.defineProperty(exports, \"__esModule\", {\n\tvalue: true\n});\n\nvar _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nvar Point = function () {\n\tfunction Point(x, y) {\n\t\t_classCallCheck(this, Point);\n\n\t\tif (isNaN(x) || isNaN(y)) {\n\t\t\tthrow new Error(\"Parameter is not a number!\");\n\t\t}\n\t\tthis.x = x;\n\t\tthis.y = y;\n\t}\n\n\t_createClass(Point, [{\n\t\tkey: \"getX\",\n\t\tvalue: function getX() {\n\t\t\treturn this.x;\n\t\t}\n\t}, {\n\t\tkey: \"getY\",\n\t\tvalue: function getY() {\n\t\t\treturn this.y;\n\t\t}\n\t}, {\n\t\tkey: \"toString\",\n\t\tvalue: function toString() {\n\t\t\treturn \"(\" + this.x + \",\" + this.y + \")\";\n\t\t}\n\t}]);\n\n\treturn Point;\n}();\n\nexports.default = Point;\n\n//# sourceURL=webpack:///./src/js/drawing/Point.js?");

/***/ })

/******/ });