CREATE TABLE "destination_db"."public"."specific_movie__dbt_tmp" AS (
  SELECT *
  FROM "destination_db"."public"."films"
  WHERE title = 'Baahubali'
);
