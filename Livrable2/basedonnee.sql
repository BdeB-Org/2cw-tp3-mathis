CREATE TABLE Car (
    car_id INT GENERATED ALWAYS AS IDENTITY,
    make VARCHAR2(50) NOT NULL,
    model VARCHAR2(50) NOT NULL,
    year INT NOT NULL,
    price NUMBER(10, 2) NOT NULL,
    mileage INT NOT NULL,
    color VARCHAR2(50),
    status VARCHAR2(50) NOT NULL,
    PRIMARY KEY (car_id)
);

CREATE TABLE Customer (
    customer_id INT GENERATED ALWAYS AS IDENTITY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) NOT NULL,
    phone VARCHAR2(20) NOT NULL,
    address VARCHAR2(255),
    PRIMARY KEY (customer_id)
);

CREATE TABLE Sale (
    sale_id INT GENERATED ALWAYS AS IDENTITY,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    sale_date DATE NOT NULL,
    sale_price NUMBER(10, 2) NOT NULL,
    PRIMARY KEY (sale_id),
    FOREIGN KEY (car_id) REFERENCES Car(car_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Employee (
    employee_id INT GENERATED ALWAYS AS IDENTITY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) NOT NULL,
    phone VARCHAR2(20) NOT NULL,
    position VARCHAR2(50) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (employee_id)
);

CREATE TABLE Inventory (
    inventory_id INT GENERATED ALWAYS AS IDENTITY,
    car_id INT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (inventory_id),
    FOREIGN KEY (car_id) REFERENCES Car(car_id)
);
