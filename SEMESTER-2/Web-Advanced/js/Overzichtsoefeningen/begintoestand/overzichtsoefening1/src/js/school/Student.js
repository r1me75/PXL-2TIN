"use strict";
import Course from "./Course";
// naam: Emir Ozdemir
export default class Student {
  constructor(id) {
    this._id = id;
    this._courses = [];
  }

  addCourse(course) {
    if (!(course instanceof Course)) {
      throw new Error("De argument is geen Course object");
    }
    this._courses.push(course);
  }

  calculateGrade() {
    let sum = 0;
    let completedCourses = 0;

    for (let course of this._courses) {
      if (course.completed) {
        sum += course.grade;
        completedCourses += 1;
      }
    }

    if (completedCourses === 0) {
      throw new Error("Completed courses zijn 0");
    }

    return sum / completedCourses;
  }
}
