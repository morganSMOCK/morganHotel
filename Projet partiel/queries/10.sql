SELECT codepostal, COUNT(*) 
FROM clients 
GROUP BY codepostal;