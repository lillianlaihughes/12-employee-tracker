// check that this is the correct path syntax
// const db = require('/db'); <---???
// Connect to database
const db = mysql.createConnection(
    {
      host: 'localhost',
      // MySQL username,
      user: 'root',
      // MySQL password
      password: 'chipmunk',
      database: 'employeeDB'
    },
    console.log(`Connected to the employeeDB database.`)
  );

  connection.connect(function (err) {
    if (err) throw err;
  });
  
  module.exports = connection;