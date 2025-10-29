-- Question:
-- Find employees whose salary is NOT BETWEEN 4000 and 7000
-- and whose job_id is DIFFERENT from 16.


-- ❌ Wrong Attempt #1 — Error: two WHERE keywords
SELECT * FROM employees 
WHERE salary NOT BETWEEN 4000 AND 7000 
AND WHERE job_id <> 16;
-- Error: You cannot use two WHERE keywords in one query.
-- Fix: combine all conditions under a single WHERE.


-- ❌ Wrong Attempt #2 — Error (De Morgan’s Law)

SELECT first_name, last_name, job_id
FROM employees
WHERE NOT (salary BETWEEN 4000 AND 7000
  AND job_id = 16);
-- This means: (salary NOT BETWEEN 4000 AND 7000) OR (job_id <> 16)
-- It uses OR instead of AND, returning a larger, incorrect set.


-- ⚠️ Teacher’s Example — Works, but be careful with logic
SELECT first_name, last_name, job_id
FROM employees
WHERE NOT salary BETWEEN 4000 AND 7000
  AND NOT job_id <> 16;
-- Note: “NOT job_id <> 16” is logically equal to “job_id = 16”.
-- So this query finds employees whose salary is not in [4000,7000]
-- AND whose job_id IS 16 — not what we actually need!

-- ✅ Correct Answer — Clean and logically accurate
SELECT first_name, last_name, job_id
FROM employees
WHERE salary NOT BETWEEN 4000 AND 7000
  AND job_id <> 16;

-- 🧠 Lesson Learned:
--  Avoid using multiple WHERE keywords — use one WHERE with AND/OR.
--  Parentheses matter in logical conditions — be explicit.
--  “NOT (A AND B)” ≠ “NOT A AND NOT B”.
--  “NOT job_id <> 16” = “job_id = 16” — be careful!
--  Always verify with COUNT(*) and sample rows.