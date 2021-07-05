SELECT
  candidates.rowid                 AS idx,
  candidates.sort_by               AS sort_by,
  COALESCE(MAX(inserted.rowid), 0) AS insert_order
FROM candidates
LEFT JOIN inserted
ON
  inserted.sort_by = candidates.sort_by
GROUP BY
  idx
ORDER BY
  idx