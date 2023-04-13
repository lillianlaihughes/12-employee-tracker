const logo = require('asciiart-logo');
const table = require('console.table');
// const exp = require('express');
const prompt = require('inquirer');
// const sequel = require('mysql2');

const db = require('./db'); // check that this is the correct path syntax

init();

function init () {
    const logoText = logo({ name: 'WayStar RoyCo Employee Manager'}).render();
    console.log(logoText);
}
