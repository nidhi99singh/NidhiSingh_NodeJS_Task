# Hospital Management System



Author: Nidhi Singh Panwar



## Project Description:

 

The project contains 3 tables



    1. Hospital

    2. Psychiatrist

    3. Patient



## Frameworks/Libraries Used:

    1. Express: to create server-side routes

    2. Multer: to save file in the database

    3. bcrypt: to encrypt the password

    4. uuid: to auto generate patient_id, psyc_id 

    5. Mysql: to connect with mysql server

    6. express-validator : to validate form data values

    7. nodemon: dependency tool so we need not start the application again & again  



## APIs



### 1. Hospital routes:

- Add new hospital ( `JSON` Payload)

```

 [POST] /api/hospital/addHospital,

```



| Parameter | Type | Description |

| :--- | :--- | :--- |

| `hospitalId`   | `string` | id of the new hospital   |

| `hospitalName` | `string` | name of the new hospital |



- Get all hospitals

```

 [GET] /api/hospital/getAllHospitals

```

### 2. Psychiatrist routes : 

- Add new Psychiatrist (`JSON` Payload)

```

[POST] /api/psychiatrist/addPsychiatrist

```

| Parameter | Type | Description |

| :--- | :--- | :--- |

| `psycId`   | `string` | id of the new psychiatrist   |

| `firstName`   | `string` | first name of the new psychiatrist   |

| `lastName` | `string` | last name  of the new psychiatrist |

| `phoneNo` | `number` | phone number  of the new psychiatrist |

| `state` | `string` | state of the new psychiatrist is located |

| `pincode` | `string` | pincode/zip of the new psychiatrist is located |

| `hospitalId` | `string` | hospital id of the new psychiatrist |

| `hospitalName` | `string` | hospital name of the new psychiatrist |



### 3. Patient :

- Add new Patient (`FormData` Payload)

``` 

[POST] /api/patient/addPatient

```

| Parameter | Type | Description |

| :--- | :--- | :--- |

| `patientId`   | `string` | id of the new Patient   |

| `name`   | `string` |  name of the new patient   |

| `email`   | `string` |  email of the new patient   |

| `password`   | `string` |  password of the new patient   |

| `address`   | `string` |  address of the new patient   |

| `phoneNo`   | `number` |  phone number of the new patient   |

| `psycId`   | `number` |  psychiatrist id of the new patient   |

| `fileSrc`   | `text` |  image of the new patient   |



 a) Fetching all the patients in order for a single psychiatrist (without photos), 



 b) Fetch the count of how many patients are registered for each psychiatrist in a hospital. This should return, the hospital name, psychiatrist name and patient count.


 c) fetch patient id by giving patient ID

## Documents Included

1. MYSQL dump file : to generate the logical backup of MYSQL database.  
2. Postman file : collection.json file containing all requests.

## Postman Link
collection.json file link :
-https://www.getpostman.com/collections/3d5d58227e1f4d90b645


## Requirements

- Node version 14 or above

- MySQL 8 or above



