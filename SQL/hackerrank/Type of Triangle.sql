SELECT
case
WHEN (A+B <= C) OR (A+C <= B) OR (B+C <= A) THEN 'Not A Triangle'
WHEN A = B AND B = C AND A = C  THEN 'Equilateral'
WHEN A !=B  AND B!=C  AND A != C  THEN 'Scalene'
WHEN A=B OR B=C OR  A=C THEN 'Isosceles'

ELSE 'Not A Triangle'
END
FROM triangles




/*SELECT
CASE
    -- 1. أولاً، اتأكد إنه مثلث سليم
    WHEN (A+B <= C) OR (A+C <= B) OR (B+C <= A) THEN 'Not A Triangle'

    -- 2. ثانياً، اتأكد من أضيق شرط (متساوي الأضلاع)
    WHEN A = B AND B = C THEN 'Equilateral'

    -- 3. ثالثاً، اتأكد من الشرط الأوسع (متساوي الساقين)
    WHEN A = B OR B = C OR A = C THEN 'Isosceles'

    -- 4. لو مش أي حاجة من اللي فوق، يبقى هو أكيد مختلف الأضلاع
    ELSE 'Scalene'
END
FROM triangles;*/