SELECT *,
  cast(CONCAT(year, '-', LPAD(CAST(MONTH_MAPPING.month_number AS CHAR), 2, '0'), '-01') AS date) AS modified_date
FROM
  gst
JOIN
  (
    VALUES
      ('January', 01),
      ('February', 02),
      ('March', 03),
      ('April', 04),
      ('May', 05),
      ('June', 06),
      ('July', 07),
      ('August', 08),
      ('September', 09),
      ('October', 10),
      ('November', 11),
      ('December', 12)
  ) AS MONTH_MAPPING (month_name, month_number)
ON
 gst.month = MONTH_MAPPING.month_name