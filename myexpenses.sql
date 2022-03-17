-- My Expenses Database

-- CREATE DATABASE
CREATE DATABASE IF NOT EXISTS my_expenses;

USE my_expenses;

-- CREATE Category Table
CREATE TABLE ex_category(
	category_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (category_id)
);

-- source: https://localfirstbank.com/article/budgeting-101-personal-budget-categories/
-- INSERT INTO Table
INSERT INTO `my_expenses`.`ex_category` (`category_id`, `name`) VALUES ('1', 'Housing');
INSERT INTO `my_expenses`.`ex_category` (`category_id`, `name`) VALUES ('2', 'Transportation');
INSERT INTO `my_expenses`.`ex_category` (`category_id`, `name`) VALUES ('3', 'Food');
INSERT INTO `my_expenses`.`ex_category` (`category_id`, `name`) VALUES ('4', 'Utilities');
INSERT INTO `my_expenses`.`ex_category` (`category_id`, `name`) VALUES ('5', 'Clothing');
INSERT INTO `my_expenses`.`ex_category` (`category_id`, `name`) VALUES ('6', 'Medical');
INSERT INTO `my_expenses`.`ex_category` (`category_id`, `name`) VALUES ('7', 'Household Items');
INSERT INTO `my_expenses`.`ex_category` (`category_id`, `name`) VALUES ('8', 'Personal');
INSERT INTO `my_expenses`.`ex_category` (`category_id`, `name`) VALUES ('9', 'Debt');
INSERT INTO `my_expenses`.`ex_category` (`category_id`, `name`) VALUES ('10', 'Savings');
INSERT INTO `my_expenses`.`ex_category` (`category_id`, `name`) VALUES ('11', 'Gifts');
INSERT INTO `my_expenses`.`ex_category` (`category_id`, `name`) VALUES ('12', 'Entertaiment');

-- CREATE Expenses Table
CREATE TABLE expanses(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    price INT NOT NULL,
    id_category INT,
    date_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
	CONSTRAINT FK_CategoryExpenses FOREIGN KEY (id_category) 
    REFERENCES ex_category(category_id)
	CONSTRAINT FK_SubCategoryExpenses FOREIGN KEY (id_sub_category) 
    REFERENCES my_expenses.sub_category(sub_category_id);
);
