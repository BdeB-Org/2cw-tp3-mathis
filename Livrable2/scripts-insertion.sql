-- Insertion des voitures
INSERT INTO Car (make, model, year, price, mileage, color, status) VALUES
('Maserati', 'Gran turismo', 2020, 45000.00, 15000, 'Bronze', 'Disponible'),
('Ferrari', 'SF90', 2022, 120000.00, 3000, 'Rouge', 'En Attente'),
('Porsche', 'Cayenne', 2021, 90000.00, 11000, 'Noir', 'Disponible'),
('Rolls-Royce', 'Ghost', 2023, 185000.00, 1500, 'Noir', 'Vendu'),
('Mercedes', 'AMG GT', 2021, 110000.00, 3200, 'Silver', 'Disponible'),
('Audi', 'RS7', 2023, 60000.00, 5000, 'Gris', 'En Attente'),
('Paganni', 'Vuesta', 2021, 1400000.00, 200, 'Gris', 'Disponible'),
('BMW', 'M3', 2022, 75000.00, 4600, 'Bleu', 'Vendu');

-- Insertion des clients
INSERT INTO Customer (first_name, last_name, email, phone, address) VALUES
('John', 'Doe', 'johndoe@example.com', '555-1234', '123 Main St'),
('Jane', 'Smith', 'janesmith@example.com', '555-5678', '456 Oak St');

-- Insertion des ventes
INSERT INTO Sale (car_id, customer_id, sale_date, sale_price) VALUES
(1, 1, '2023-05-01', 185000.00),
(2, 2, '2023-06-15', 75000.00);

-- Insertion des employ�s
INSERT INTO Employee (first_name, last_name, email, phone, position, hire_date) VALUES
('Alice', 'Johnson', 'alicejohnson@example.com', '555-9012', 'Sales Manager', '2022-01-10'),
('Bob', 'Williams', 'bobwilliams@example.com', '555-3456', 'Sales Associate', '2021-03-15');

-- Insertion des inventaires
INSERT INTO Inventory (car_id, quantity) VALUES
(1, 10),
(2, 5);
