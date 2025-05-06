-- Create Supplier table with utf8mb4
CREATE TABLE Supplier (
    supplier_id CHAR(4) PRIMARY KEY,
    name CHAR(10),
    city CHAR(6)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Create Project table with utf8mb4
CREATE TABLE Project (
    project_id CHAR(4) PRIMARY KEY,
    name CHAR(10),
    city CHAR(6)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Create Component table with utf8mb4
CREATE TABLE Component (
    component_id CHAR(4) PRIMARY KEY,
    name CHAR(10),
    color CHAR(4),
    weight DECIMAL(5, 2)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Create Project_supp_Component table with utf8mb4
CREATE TABLE Project_supp_Component (
    supplier_id CHAR(4),
    project_id CHAR(4),
    component_id CHAR(4),
    quantity INT,
    PRIMARY KEY (supplier_id, project_id, component_id),
    FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id) ON DELETE CASCADE,
    FOREIGN KEY (project_id) REFERENCES Project(project_id) ON DELETE CASCADE,
    FOREIGN KEY (component_id) REFERENCES Component(component_id) ON DELETE CASCADE
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

