-- Insert into Supplier
INSERT INTO Supplier (supplier_id, name, city) VALUES ('S1', '大勝', '台南');
INSERT INTO Supplier (supplier_id, name, city) VALUES ('S2', '冠軍', '高雄');
INSERT INTO Supplier (supplier_id, name, city) VALUES ('S3', '無敵', '台中');
INSERT INTO Supplier (supplier_id, name, city) VALUES ('S4', '一級棒', '高雄');

-- Insert into Project
INSERT INTO Project (project_id, name, city) VALUES ('J1', '火星', '台中');
INSERT INTO Project (project_id, name, city) VALUES ('J2', '土星', '高雄');
INSERT INTO Project (project_id, name, city) VALUES ('J3', '太陽', '台北');

-- Insert into Component
INSERT INTO Component (component_id, name, color, weight) VALUES ('P1', '螺絲釘', '黑', 14.0);
INSERT INTO Component (component_id, name, color, weight) VALUES ('P2', '螺帽', '黑', 16.0);
INSERT INTO Component (component_id, name, color, weight) VALUES ('P3', '齒輪', '綠', 27.0);
INSERT INTO Component (component_id, name, color, weight) VALUES ('P4', '板手', '藍', 63.0);
INSERT INTO Component (component_id, name, color, weight) VALUES ('P5', '撬子', '棕', 80.0);

-- Insert into Project_supp_Component
INSERT INTO Project_supp_Component (supplier_id, component_id, project_id, quantity) VALUES ('S1', 'P1', 'J2', 300);
INSERT INTO Project_supp_Component (supplier_id, component_id, project_id, quantity) VALUES ('S1', 'P1', 'J3', 100);
INSERT INTO Project_supp_Component (supplier_id, component_id, project_id, quantity) VALUES ('S1', 'P4', 'J1', 500);
INSERT INTO Project_supp_Component (supplier_id, component_id, project_id, quantity) VALUES ('S2', 'P2', 'J1', 400);
INSERT INTO Project_supp_Component (supplier_id, component_id, project_id, quantity) VALUES ('S2', 'P3', 'J3', 600);
INSERT INTO Project_supp_Component (supplier_id, component_id, project_id, quantity) VALUES ('S3', 'P1', 'J2', 300);
INSERT INTO Project_supp_Component (supplier_id, component_id, project_id, quantity) VALUES ('S4', 'P3', 'J1', 200);
INSERT INTO Project_supp_Component (supplier_id, component_id, project_id, quantity) VALUES ('S4', 'P4', 'J1', 700);
INSERT INTO Project_supp_Component (supplier_id, component_id, project_id, quantity) VALUES ('S4', 'P5', 'J2', 100);

