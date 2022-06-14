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

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _school_Course__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./school/Course */ \"./src/js/school/Course.js\");\n/* harmony import */ var _school_Student__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./school/Student */ \"./src/js/school/Student.js\");\n\n\n\n\nwindow.addEventListener(\"load\", function () {\n  var student = new _school_Student__WEBPACK_IMPORTED_MODULE_1__[\"default\"](1);\n  var course = new _school_Course__WEBPACK_IMPORTED_MODULE_0__[\"default\"](101);\n  course.completed = true;\n  course.grade = 12;\n  student.addCourse(course);\n  var course2 = new _school_Course__WEBPACK_IMPORTED_MODULE_0__[\"default\"](111);\n  course2.completed = true;\n  course2.grade = 13;\n  student.addCourse(course2);\n  var course3 = new _school_Course__WEBPACK_IMPORTED_MODULE_0__[\"default\"](121);\n  student.addCourse(course3);\n  var grade = student.calculateGrade();\n  document.getElementById(\"output\").appendChild(document.createTextNode(grade));\n});\n\n//# sourceURL=webpack:///./src/js/app.js?");

/***/ }),

/***/ "./src/js/school/Course.js":
/*!*********************************!*\
  !*** ./src/js/school/Course.js ***!
  \*********************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": () => (/* binding */ Course)\n/* harmony export */ });\n // naam: Emir Ozdemir\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }\n\nfunction _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, \"prototype\", { writable: false }); return Constructor; }\n\nvar Course = /*#__PURE__*/function () {\n  function Course(id) {\n    _classCallCheck(this, Course);\n\n    this._id = id;\n    this._grade = 0;\n    this._completed = false;\n  } // Getters\n\n\n  _createClass(Course, [{\n    key: \"id\",\n    get: function get() {\n      return this._id;\n    },\n    set: // Setters\n    function set(id) {\n      this._id = id;\n    }\n  }, {\n    key: \"grade\",\n    get: function get() {\n      return this._grade;\n    },\n    set: function set(grade) {\n      this._grade = grade;\n    }\n  }, {\n    key: \"completed\",\n    get: function get() {\n      return this._completed;\n    },\n    set: function set(completed) {\n      this._completed = completed;\n    }\n  }]);\n\n  return Course;\n}();\n\n\n\n//# sourceURL=webpack:///./src/js/school/Course.js?");

/***/ }),

/***/ "./src/js/school/Student.js":
/*!**********************************!*\
  !*** ./src/js/school/Student.js ***!
  \**********************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": () => (/* binding */ Student)\n/* harmony export */ });\n/* harmony import */ var _Course__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Course */ \"./src/js/school/Course.js\");\n\n\nfunction _createForOfIteratorHelper(o, allowArrayLike) { var it = typeof Symbol !== \"undefined\" && o[Symbol.iterator] || o[\"@@iterator\"]; if (!it) { if (Array.isArray(o) || (it = _unsupportedIterableToArray(o)) || allowArrayLike && o && typeof o.length === \"number\") { if (it) o = it; var i = 0; var F = function F() {}; return { s: F, n: function n() { if (i >= o.length) return { done: true }; return { done: false, value: o[i++] }; }, e: function e(_e) { throw _e; }, f: F }; } throw new TypeError(\"Invalid attempt to iterate non-iterable instance.\\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.\"); } var normalCompletion = true, didErr = false, err; return { s: function s() { it = it.call(o); }, n: function n() { var step = it.next(); normalCompletion = step.done; return step; }, e: function e(_e2) { didErr = true; err = _e2; }, f: function f() { try { if (!normalCompletion && it[\"return\"] != null) it[\"return\"](); } finally { if (didErr) throw err; } } }; }\n\nfunction _unsupportedIterableToArray(o, minLen) { if (!o) return; if (typeof o === \"string\") return _arrayLikeToArray(o, minLen); var n = Object.prototype.toString.call(o).slice(8, -1); if (n === \"Object\" && o.constructor) n = o.constructor.name; if (n === \"Map\" || n === \"Set\") return Array.from(o); if (n === \"Arguments\" || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n)) return _arrayLikeToArray(o, minLen); }\n\nfunction _arrayLikeToArray(arr, len) { if (len == null || len > arr.length) len = arr.length; for (var i = 0, arr2 = new Array(len); i < len; i++) { arr2[i] = arr[i]; } return arr2; }\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }\n\nfunction _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, \"prototype\", { writable: false }); return Constructor; }\n\n // naam: Emir Ozdemir\n\nvar Student = /*#__PURE__*/function () {\n  function Student(id) {\n    _classCallCheck(this, Student);\n\n    this._id = id;\n    this._courses = [];\n  }\n\n  _createClass(Student, [{\n    key: \"addCourse\",\n    value: function addCourse(course) {\n      if (!(course instanceof _Course__WEBPACK_IMPORTED_MODULE_0__[\"default\"])) {\n        throw new Error(\"De argument is geen Course object\");\n      }\n\n      this._courses.push(course);\n    }\n  }, {\n    key: \"calculateGrade\",\n    value: function calculateGrade() {\n      var sum = 0;\n      var completedCourses = 0;\n\n      var _iterator = _createForOfIteratorHelper(this._courses),\n          _step;\n\n      try {\n        for (_iterator.s(); !(_step = _iterator.n()).done;) {\n          var course = _step.value;\n\n          if (course.completed) {\n            sum += course.grade;\n            completedCourses += 1;\n          }\n        }\n      } catch (err) {\n        _iterator.e(err);\n      } finally {\n        _iterator.f();\n      }\n\n      if (completedCourses === 0) {\n        throw new Error(\"Completed courses zijn 0\");\n      }\n\n      return sum / completedCourses;\n    }\n  }]);\n\n  return Student;\n}();\n\n\n\n//# sourceURL=webpack:///./src/js/school/Student.js?");

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