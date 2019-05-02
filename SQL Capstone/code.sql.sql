/**-- 1.
 SELECT *
 FROM survey
 LIMIT 10;
 */
/**--2.
SELECT question, COUNT(DISTINCT user_id)
FROM survey
GROUP BY 1;
*/ 
/**--4.
 SELECT *
 FROM quiz
 LIMIT 5;
 
 SELECT *
 FROM home_try_on
 LIMIT 5;
 
 SELECT *
 FROM purchase
 LIMIT 5;
*/
/**--5. 
SELECT DISTINCT q.user_id,
  (h.user_id IS NOT NULL) AS 'is_home_try_on',
   h.number_of_pairs,
   (p.user_id IS NOT NULL) AS 'is_purchase'
FROM quiz q
LEFT JOIN home_try_on h
   ON q.user_id = h.user_id
LEFT JOIN purchase p
   ON p.user_id = q.user_id
LIMIT 10;
*/
/**--6 part I Average purchase price
SELECT number_of_pairs,
	MIN(p.price) AS 'minimum_price',
  AVG(p.price) AS 'average_price',
  MAX(p.price) AS 'max_price'
FROM quiz q
LEFT JOIN home_try_on h
   ON q.user_id = h.user_id
LEFT JOIN purchase p
   ON p.user_id = q.user_id
WHERE p.user_id IS NOT NULL
GROUP BY number_of_pairs;
*/
/**-- 6 part II Count of styles purchased
SELECT q.style,
COUNT (p.style) AS 'purchase_style'
FROM quiz q
LEFT JOIN purchase p
   ON p.style= q.style
GROUP BY q.style;
*/



  



