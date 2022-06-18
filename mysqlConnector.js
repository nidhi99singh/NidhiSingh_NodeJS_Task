const mysql = require('mysql')

const con = mysql.createConnection({
    host: 'localhost',
    port: '3030',
    user: 'Nidhi',
    password: 'nidhi09$',
    database: 'hospitalmanagement'

})

//create database

// var query = 'create database HospitalManagement'
// con.query(query, (err) => {
//     try {

//         if (err)
//             console.log(err)
//         else
//             console.log('database created')
//     } catch (err) {
//         console.log(err)
//     }

// })

//create hospital table

// var query = 'create table hospital (hospitalId varchar(50) primary key, hospitalName varchar(100) not null)'

// con.query(query, (err) => {
//     try {
//         if (err) {
//             console.log(err)
//         }
//         else {
//             console.log('table created')
//         }

//     } catch (error) {
//         console.log(error)

//     }
// })

// // //create psychiatrist table

// var query = 'create table psychiatrist(psycId varchar(50) primary key, firstName varchar(10) not null,lastName varchar(10),phoneNo int(20),state varchar(20),pincode int(6), hospitalId varchar(50),hospitalName varchar(100),foreign key(hospitalId) references hospital(hospitalId))'

// con.query(query, (err) => {
//     try {
//         if (err) {
//             console.log(err)
//         }
//         else {
//             console.log('psychiatrist table created')
//         }

//     } catch (error) {
//         console.log(error)

//     }
// })

//  //create patient table

// var query = 'create table patient(patientId varchar(50) primary key, name varchar(20),address varchar(50),phoneNo varchar(20),email varchar(20),password varchar(100), psycId varchar(50),fileSrc text,foreign key(psycId) references psychiatrist(psycId))'

// con.query(query, (err) => {
//     try {
//         if (err) {
//             console.log(err)
//         }
//         else {
//             console.log('patient table created')
//         }

//     } catch (error) {
//         console.log(error)

//     }
// })

module.exports = con