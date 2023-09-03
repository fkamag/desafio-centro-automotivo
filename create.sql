DROP DATABASE IF EXISTS autocenter;
CREATE DATABASE autocenter;
USE autocenter;
CREATE TABLE customer (
	id_customer INT AUTO_INCREMENT PRIMARY KEY,
    type_person ENUM('NP', 'LP')
);
CREATE TABLE states (
	id_state INT AUTO_INCREMENT PRIMARY KEY,
    state_uf CHAR(2) NOT NULL
);
CREATE TABLE city (
	id_city INT AUTO_INCREMENT PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL,
    id_state INT,
    CONSTRAINT fk_state FOREIGN KEY (id_state) REFERENCES states (id_state)
);
CREATE TABLE natural_person (
	id_natural_person INT AUTO_INCREMENT PRIMARY KEY,
    id_customer INT,
    alias_name VARCHAR(20)  NOT NULL,
    full_name VARCHAR(50) NOT NULL,
    cpf CHAR(11) NOT NULL,
    birth_date DATE NOT NULL,
    phone VARCHAR(11),
    CONSTRAINT unique_cpf_costumer UNIQUE(cpf),
    CONSTRAINT fk_natural_person FOREIGN KEY (id_customer) REFERENCES customer (id_customer)
);
CREATE TABLE legal_person (
	id_legal_person INT AUTO_INCREMENT PRIMARY KEY,
    id_customer INT,
    trade_supplier VARCHAR(30)  NOT NULL,
    company_supplier VARCHAR(50) NOT NULL,
    cnpj CHAR(14) NOT NULL,
    phone VARCHAR(11),
    CONSTRAINT unique_cnpj_consumer UNIQUE(cnpj),
    CONSTRAINT fk_legal_person FOREIGN KEY (id_customer) REFERENCES customer (id_customer)
);
CREATE TABLE address_customer (
	id_address INT AUTO_INCREMENT PRIMARY KEY,
    address_name VARCHAR(80) NOT NULL,
    address_number INT,
    district VARCHAR(50),
    zip CHAR(8),
    id_city INT,
    id_customer INT,
    alias_address VARCHAR(20),
    CONSTRAINT fk_city FOREIGN KEY (id_city) REFERENCES city (id_city),
    CONSTRAINT fk_customer FOREIGN KEY (id_customer) REFERENCES customer (id_customer)
);
CREATE TABLE supplier (
	id_supplier INT AUTO_INCREMENT PRIMARY KEY,
    trade_supplier VARCHAR(30)  NOT NULL,
    company_supplier VARCHAR(50) NOT NULL,
    cnpj CHAR(14) NOT NULL,
    address_name VARCHAR(80) NOT NULL,
    address_number INT,
    district VARCHAR(50),
    zip CHAR(8),
    id_city INT,
    phone VARCHAR(11),
    CONSTRAINT unique_cnpj_suplier UNIQUE(cnpj),
    CONSTRAINT fk_city_supplier FOREIGN KEY (id_city) REFERENCES city (id_city)
);
CREATE TABLE category_product (
	id_category INT AUTO_INCREMENT PRIMARY KEY,
    name_category VARCHAR(30) NOT NULL
);
CREATE TABLE product (
	id_product INT AUTO_INCREMENT PRIMARY KEY,
    name_product VARCHAR(30) NOT NULL,
    unit_value DECIMAL(10,2),
    id_category INT,
    id_supplier INT,
    CONSTRAINT fk_category FOREIGN KEY (id_category) REFERENCES category_product (id_category),
    CONSTRAINT fk_supplier FOREIGN KEY (id_supplier) REFERENCES supplier (id_supplier)
);
CREATE TABLE payment (
	id_payment INT AUTO_INCREMENT PRIMARY KEY,
    name_payment VARCHAR(20) NOT NULL
);
CREATE TABLE employee (
	id_employee INT AUTO_INCREMENT PRIMARY KEY,
    alias_name VARCHAR(20),
    full_name VARCHAR(50) NOT NULL,
    cpf CHAR(11) NOT NULL,
    birth_date DATE NOT NULL,
    phone VARCHAR(11),
    CONSTRAINT unique_cpf_employee UNIQUE(cpf)
);
CREATE TABLE service (
	id_service INT AUTO_INCREMENT PRIMARY KEY,
    name_service VARCHAR(50),
    value_service DECIMAL(10,2)
);
CREATE TABLE status_order (
	id_status_order INT AUTO_INCREMENT PRIMARY KEY,
    name_status_order VARCHAR(20) NOT NULL
);
CREATE TABLE vehicle (
	id_vehicle INT AUTO_INCREMENT PRIMARY KEY,
    id_customer INT,
    car_brand VARCHAR(30),
    car_model VARCHAR(30),
    license_plate VARCHAR(7),
    CONSTRAINT fk_vehicle_customer FOREIGN KEY (id_customer) REFERENCES customer (id_customer),
    CONSTRAINT unique_vehicle UNIQUE(license_plate)
);
CREATE TABLE orders (
	id_order INT AUTO_INCREMENT PRIMARY KEY,
    id_vehicle INT,
    id_status_order INT,
    value_order DECIMAL(10,2),
    data_order DATETIME,
    CONSTRAINT fk_order_vehicle FOREIGN KEY (id_vehicle) REFERENCES vehicle (id_vehicle),
    CONSTRAINT fk_order_status FOREIGN KEY (id_status_order) REFERENCES status_order (id_status_order)
);
CREATE TABLE order_payment (
	id_order INT,
    id_payment INT,
    value_payment DECIMAL(10,2),
    CONSTRAINT fk_payment_order FOREIGN KEY (id_order) REFERENCES orders (id_order),
    CONSTRAINT fk_order_payment FOREIGN KEY (id_payment) REFERENCES payment (id_payment),
    PRIMARY KEY (id_order, id_payment)
);
CREATE TABLE order_product (
	id_order INT,
    id_product INT,
    quantity INT,
    unit_value DECIMAL(5,2),
    CONSTRAINT fk_order_product FOREIGN KEY (id_order) REFERENCES orders (id_order),
    CONSTRAINT fk_product_order FOREIGN KEY (id_product) REFERENCES product (id_product),
    PRIMARY KEY (id_order, id_product)
);
CREATE TABLE order_service (
	id_order INT,
    id_service INT,
    id_employee INT,
    quantity INT,
    unit_value DECIMAL(5,2),
    CONSTRAINT fk_order_service FOREIGN KEY (id_order) REFERENCES orders (id_order),
    CONSTRAINT fk_service_order FOREIGN KEY (id_service) REFERENCES service (id_service),
    CONSTRAINT fk_service_employee FOREIGN KEY (id_employee) REFERENCES employee (id_employee),
    PRIMARY KEY (id_order, id_service)
);
CREATE TABLE stock (
	id_stock INT AUTO_INCREMENT PRIMARY KEY,
    locality VARCHAR(30)
);
CREATE TABLE product_stock (
	id_product INT,
    id_stock INT,
    quantity DECIMAL(5,2),
    CONSTRAINT fk_product_stock FOREIGN KEY (id_product) REFERENCES product (id_product),
    CONSTRAINT fk_stock_product FOREIGN KEY (id_stock) REFERENCES stock (id_stock),
    PRIMARY KEY (id_product, id_stock)
);