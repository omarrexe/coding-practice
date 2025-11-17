
  SELECT company.company_code ,founder,
  count(DISTINCT lm.lead_manager_code),
  count(DISTINCT sm.senior_manager_code),
  count(DISTINCT m.manager_code),
  count(DISTINCT e.employee_code)
  from company
  LEFT JOIN lead_manager AS lm
  ON company.company_code = lm.company_code
  LEFT JOIN senior_manager AS sm
    ON lm.lead_manager_code =sm.lead_manager_code
  LEFT JOIN manager AS m
    ON sm.senior_manager_code= m.senior_manager_code
  LEFT JOIN employee AS e
    ON m.manager_code =e.manager_code
    GROUP BY company.company_code,company.founder
    ORDER BY company.company_code ASC ;