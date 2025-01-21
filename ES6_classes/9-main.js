import { listOfStudents } from "./9-hoisting.js"; // Ensure to import the list correctly

console.log(listOfStudents);

const listPrinted = listOfStudents.map(
  student => student.fullStudentDescription
);

console.log(listPrinted);
