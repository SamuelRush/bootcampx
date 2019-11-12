SELECT avg(total_duration) as avg_total_duration
FROM (
  SELECT sum(assistance_requests.completed_at-assistance_requests.started_at) as total_duration
  FROM cohorts
  JOIN students ON students.cohort_id = cohorts.id
  JOIN assistance_requests ON students.id = assistance_requests.student_id
  GROUP BY cohorts.name
) as total_durations;