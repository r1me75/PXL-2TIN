"use strict";
// naam: Emir Ozdemir
export default class Course {
  constructor(id) {
    this._id = id;
    this._grade = 0;
    this._completed = false;
  }

  // Getters
  get id() {
    return this._id;
  }
  get grade() {
    return this._grade;
  }
  get completed() {
    return this._completed;
  }

  // Setters
  set id(id) {
    this._id = id;
  }
  set grade(grade) {
    this._grade = grade;
  }
  set completed(completed) {
    this._completed = completed;
  }
}
