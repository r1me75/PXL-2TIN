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

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony import */ var _lingo_Word__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./lingo/Word */ \"./src/js/lingo/Word.js\");\n/* harmony import */ var _lingo_Game__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./lingo/Game */ \"./src/js/lingo/Game.js\");\n\n\n\n\nvar word = new _lingo_Word__WEBPACK_IMPORTED_MODULE_0__[\"default\"](\"woord\");\nvar word2 = new _lingo_Word__WEBPACK_IMPORTED_MODULE_0__[\"default\"](\"water\");\nvar word3 = new _lingo_Word__WEBPACK_IMPORTED_MODULE_0__[\"default\"](\"wreed\");\nvar word4 = new _lingo_Word__WEBPACK_IMPORTED_MODULE_0__[\"default\"](\"woest\");\nvar word5 = new _lingo_Word__WEBPACK_IMPORTED_MODULE_0__[\"default\"](\"waard\");\nvar word6 = new _lingo_Word__WEBPACK_IMPORTED_MODULE_0__[\"default\"](\"woord\");\nconsole.log(word.evaluate(word2));\nconsole.log(word.evaluate(word3));\nconsole.log(word.evaluate(word4));\nconsole.log(word.evaluate(word5));\nconsole.log(word.evaluate(word6));\nvar game = new _lingo_Game__WEBPACK_IMPORTED_MODULE_1__[\"default\"](word);\ngame.addGuess(word2);\ngame.addGuess(word3);\ngame.addGuess(word4);\ngame.addGuess(word5);\ngame.addGuess(word6);\n\nfor (var i = 0; i < game.numberOfGuesses; i++) {\n  document.write(game.evaluate(i) + '<br>');\n}\n\n//# sourceURL=webpack:///./src/js/app.js?");

/***/ }),

/***/ "./src/js/lingo/Game.js":
/*!******************************!*\
  !*** ./src/js/lingo/Game.js ***!
  \******************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": () => (/* binding */ Game)\n/* harmony export */ });\n/* harmony import */ var _Word__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./Word */ \"./src/js/lingo/Word.js\");\n // naam: Emir Ozdemir\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }\n\nfunction _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, \"prototype\", { writable: false }); return Constructor; }\n\n\n\nvar Game = /*#__PURE__*/function () {\n  function Game(word) {\n    _classCallCheck(this, Game);\n\n    if (!(word instanceof _Word__WEBPACK_IMPORTED_MODULE_0__[\"default\"])) {\n      throw new Error(\"Argument word is niet van de klasse Word\");\n    }\n\n    this._searchWord = word;\n    this._guesses = [];\n  }\n\n  _createClass(Game, [{\n    key: \"addGuess\",\n    value: function addGuess(word) {\n      if (!(word instanceof _Word__WEBPACK_IMPORTED_MODULE_0__[\"default\"])) {\n        throw new Error(\"Argument word is niet van de klasse Word\");\n      }\n\n      if (this.numberOfGuesses > 4) {\n        throw new Error(\"Er zijn al 5 woorden toegevoegd\");\n      }\n\n      this._guesses.push(word);\n    }\n  }, {\n    key: \"numberOfGuesses\",\n    get: function get() {\n      return this._guesses.length;\n    }\n  }, {\n    key: \"evaluate\",\n    value: function evaluate(index) {\n      if (!Number.isInteger(index)) {\n        throw new Error(\"De gegeven argument is geen geheel getal\");\n      }\n\n      if (index < 0 && index > this.numberOfGuesses - 1) {\n        throw new Error(\"De argument ligt niet tussen 0 en \".concat(this.numberOfGuesses));\n      }\n\n      return this._searchWord.evaluate(this._guesses[index]);\n    }\n  }]);\n\n  return Game;\n}();\n\n\n\n//# sourceURL=webpack:///./src/js/lingo/Game.js?");

/***/ }),

/***/ "./src/js/lingo/Word.js":
/*!******************************!*\
  !*** ./src/js/lingo/Word.js ***!
  \******************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

eval("__webpack_require__.r(__webpack_exports__);\n/* harmony export */ __webpack_require__.d(__webpack_exports__, {\n/* harmony export */   \"default\": () => (/* binding */ Word)\n/* harmony export */ });\n // naam: Emir Ozdemir\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }\n\nfunction _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); Object.defineProperty(Constructor, \"prototype\", { writable: false }); return Constructor; }\n\nvar Word = /*#__PURE__*/function () {\n  function Word(word) {\n    _classCallCheck(this, Word);\n\n    if (typeof word != 'string') {\n      throw new Error(\"Argument word is geen string!\");\n    }\n\n    if (word.length !== 5) {\n      throw new Error(\"De lengte van de argument word is niet 5!\");\n    }\n\n    this._word = word;\n  }\n\n  _createClass(Word, [{\n    key: \"evaluate\",\n    value: function evaluate(guessWord) {\n      if (!(guessWord instanceof Word)) {\n        throw new Error(\"Argument guessWord is geen object van de klasse Word\");\n      }\n\n      var guess = guessWord._word;\n      var score = \"\";\n\n      for (var i = 0; i < guess.length; i++) {\n        if (guess[i] === this._word[i]) {\n          score += \"R\";\n        } else if (this._word.indexOf(guess[i]) > -1) {\n          score += \"Y\";\n        } else {\n          score += \".\";\n        }\n      }\n\n      return score;\n    }\n  }]);\n\n  return Word;\n}();\n\n\n\n//# sourceURL=webpack:///./src/js/lingo/Word.js?");

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