const { prompt } = require('inquirer');
const logo = require('asciiart-logo');

const table = require('console.table');

// Import and require mysql2
const mysql = require('mysql2');

// NOTE TO SELF: why is exp or express highlighted diff on leftside?
const express = require('express');

const PORT = process.env.PORT || 3001;
const app = express();

// NOTE TO SELF: Express middleware -- should extended be FALSE or TRUE?
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

init();

function init () {
    const logoText = logo({ name: 'WayStar RoyCo Employee Manager'}).render();
    console.log(logoText);
};

function loadPrompts() {
  prompt([
    {
      type: "list",
      name: "choice",
      message: "What would you like to do?",
      choices: [
        {
          name: "View all departments",
          value: "VIEW_DEPARTMENTS"
        },
        {
          name: "View all roles",
          value: "VIEW_ROLES"
        },
        {
          name: "View all employees",
          value: "VIEW_EMPLOYEES"
        },
        {
          name: "View employees by department",
          value: "VIEW_EMPLOYEES_BY_DEPT"
        },
        {
          name: "View employees by manager",
          value: "VIEW_EMPLOYEES_BY_MGR"
        },
        {
          name: "Add a department",
          value: "ADD_DEPARTMENT"
        },
        {
          name: "Add a role",
          value: "ADD_ROLE"
        },
        {
          name: "Add an employee",
          value: "ADD_EMPLOYEE"
        },
        {
          name: "Update an employee role",
          value: "UPDATE_EMPLOYEE_ROLE"
        },
        {
          name: "Update employee manager",
          value: "UPDATE_EMPLOYEE_MANAGER"
        },
        {
          name: "View Total Utilized Budget by Department",
          value: "VIEW_BUDGET_BY_DEPARTMENT"
        },
        {
          name: "Quit",
          value: "QUIT"
        }
      ]
    }
  ]).then(res => {
    let choice = res.choice;
    // switch to function chosen by user input
    switch (choice) {
      case "VIEW_DEPARTMENTS": viewDepartments();
      break;
      case "VIEW_ROLES": viewRoles();
      break;
      case "VIEW_EMPLOYEES": viewEmployees();
      break;
      case "VIEW_EMPLOYEES_BY_DEPT": viewEmployeesByDept();
      break;
      case "VIEW_EMPLOYEES_BY_MGR": viewEmployeesByMgr();
      break;
      case "ADD_DEPARTMENT": addDepartment();
      break;
      case "ADD_ROLE": addRole();
      break;
      case "ADD_EMPLOYEE": addEmployees();
      break;
      case "UPDATE_EMPLOYEE_ROLE": updateEmployeeRole();
      break;
      case "UPDATE_EMPLOYEE_MANAGER": updateEmployeeManager();
      break;
      case "VIEW_BUDGET_BY_DEPARTMENT": viewEmployees();
      break;
      default: quit();
    }
  })
}

// example: View all employees under a certain manager
function viewEmployeesByMgr() {
  db.findAllEmployees()
    .then(([rows]) => {
      let managers = rows;
      const managerChoices = managers.map(({ id, first_name, last_name}) => ({
        name: `${first_name} ${last_name}`,
        value: id   
      }));

      prompt([
        {
          type: "list",
          name: "managerID",
          message: "For which employee manager do you want to view the direct reports?",
          choices: managerChoices
        }
      ])
      .then(res = db.findAllEmployeesByMgr(res.managerID))
      .then(([rows]) => {
        let employees = rows;
        console.log("\n");
        if (employees.length === 0) {
          console.log(`The selected employee has no direct reports.`);
        } else {
          console.table(employees);
        }
      })
    }
    )
};
  
// example: View all employees in a certain department
function viewEmployeesByDept() {
  db.findAllEmployees()
    .then(([rows]) => {
      let departments = rows;
      const departmentChoices = departments.map(({ id, dept_name}) => ({
        name: `${dept_name}`,
        value: id   
      }));

      prompt([
        {
          type: "list",
          name: "dept_ID",
          message: "Which department do you want to view?",
          choices: departmentChoices
        }
      ])
      .then(res = db.findAllEmployeesByDept(res.deptID))
      .then(([rows]) => {
        let employees = rows;
        console.log("\n");
        if (employees.length === 0) {
          console.log(`The selected department has no employees.`);
        } else {
          console.table(employees);
        }
      })
    }
    )
};

// example: View all employees in a certain department
function viewEmployeesByDept() {
  db.findAllEmployees()
    .then(([rows]) => {
      let departments = rows;
      const departmentChoices = departments.map(({ id, dept_name}) => ({
        name: `${dept_name}`,
        value: id   
      }));

      prompt([
        {
          type: "list",
          name: "dept_ID",
          message: "Which department do you want to view?",
          choices: departmentChoices
        }
      ])
      .then(res = db.findAllEmployeesByDept(res.deptID))
      .then(([rows]) => {
        let employees = rows;
        console.log("\n");
        if (employees.length === 0) {
          console.log(`The selected department has no employees.`);
        } else {
          console.table(employees);
        }
      })
    }
    )
};