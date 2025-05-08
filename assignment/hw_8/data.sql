-- Question 1
SELECT DISTINCT s.supplier_id, s.name
FROM Supplier s
JOIN Project_supp_Component psc ON s.supplier_id = psc.supplier_id
JOIN Project p ON psc.project_id = p.project_id
WHERE p.name = '火星';


-- Question 2
SELECT DISTINCT c.component_id, c.name
FROM Supplier s
JOIN Project_supp_Component psc ON s.supplier_id = psc.supplier_id
JOIN Component c ON psc.component_id = c.component_id
WHERE s.name = '大勝';


-- Question 3
UPDATE Supplier
SET city = '台南'
WHERE name = '冠軍';


-- Question 4
SELECT s.city, SUM(psc.quantity) AS total_supplied
FROM Supplier s
JOIN Project_supp_Component psc ON s.supplier_id = psc.supplier_id
GROUP BY s.city
ORDER BY total_supplied DESC;


-- Question 5
SELECT p.name, SUM(psc.quantity) AS total_quantity
FROM Project p
JOIN Project_supp_Component psc ON p.project_id = psc.project_id
GROUP BY p.name
ORDER BY total_quantity DESC
LIMIT 1;


-- Question 6
DELETE FROM Component
WHERE weight > 50;


