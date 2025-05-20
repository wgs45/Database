-- Question 1
SELECT s.name, COUNT(DISTINCT psc.component_id) AS part_types
FROM Supplier s
JOIN Project_supp_Component psc ON s.supplier_id = psc.supplier_id
GROUP BY s.supplier_id, s.name
ORDER BY part_types DESC
LIMIT 1;

-- Question 2
SELECT p.project_id, p.name, SUM(psc.quantity) AS total_quantity
FROM Project p 
JOIN Project_supp_Component psc ON p.project_id = psc.project_id
GROUP BY p.project_id, p.name
HAVING total_quantity > 500;

-- Question 3
INSERT INTO Component (component_id, name, color, weight)
VALUES ('P6', '水桶', '黃', 80);

SELECT c.component_id, c.name
FROM Component c
LEFT JOIN Project_supp_Component psc ON c.component_id = psc.component_id
WHERE psc.component_id IS NULL;

-- Question 4
SELECT name FROM Component WHERE weight > ALL (
    SELECT c.weight
    FROM Component c 
    JOIN Project_supp_Component psc on c.component_id = psc.component_id
    WHERE psc.supplier_id = 'S2'
);


