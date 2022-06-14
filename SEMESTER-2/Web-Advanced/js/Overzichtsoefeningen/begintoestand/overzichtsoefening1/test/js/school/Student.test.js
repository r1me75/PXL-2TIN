import Course from "../../../src/js/school/Course";
import Student from "../../../src/js/school/Student";
// naam: Emir Ozdemir

describe("function calculateGrade", () => {
  it("should throw error if student has no completed courses", () => {
    expect(() => {
      const student = new Student();
      student.calculateGrade();
    }).toThrow(Error);
  });

  it("should return 12 if student has 1 completed course with grade 12", () => {
    const student = new Student();
    const course = new Course();

    course.completed = true;
    course.grade = 12;

    student.addCourse(course);
    const returnedGrade = student.calculateGrade();

    expect(returnedGrade).toBe(12);
  });
});
