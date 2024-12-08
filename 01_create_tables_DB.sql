CREATE TABLE Persons (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    is_internal INT,
    role VARCHAR(100) DEFAULT NULL
);

CREATE TABLE Products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(1000) NOT NULL,
    value DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL
);

CREATE TABLE Sales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    sale_date DATE NOT NULL,
    id_salesman INT NOT NULL, -- Relaciona com Persons
    id_customer INT NOT NULL, -- Relaciona com Persons
    amount DECIMAL(10, 2) NOT NULL, -- Valor total da venda
    FOREIGN KEY (id_salesman) REFERENCES Persons(id),
    FOREIGN KEY (id_customer) REFERENCES Persons(id)
);

CREATE TABLE SaleProduct (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_sale INT NOT NULL, -- Relaciona com Sales
    id_product INT NOT NULL, -- Relaciona com Products
    quantity INT NOT NULL, -- Quantidade do produto na venda
    price DECIMAL(10, 2) NOT NULL, -- Preço do produto na venda
    FOREIGN KEY (id_sale) REFERENCES Sales(id),
    FOREIGN KEY (id_product) REFERENCES Products(id)
);

