export default function createReportObject(employeesList) {
    return {
        allEmployees: { ...employeesList },  // Spread the employeesList into allEmployees
        getNumberOfDepartments: function () {  // Method to get the number of departments
            return Object.keys(this.allEmployees).length;  // Count the number of department keys
        }
    };
}