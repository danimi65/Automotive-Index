\c danikaharada;

DROP USER IF EXISTS "indexed_car_user";
CREATE USER "indexed_car_user";
DROP DATABASE IF EXISTS "indexed_cars";
CREATE DATABASE "indexed_cars" WITH OWNER "indexed_car_user";

\c indexed_cars;
\i scripts/car_models.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;

SELECT DISTINCT "make_title" FROM "car_models" WHERE "make_code" = 'LAM'; --55.995 ms
SELECT DISTINCT "model_title" FROM "car_models" WHERE "make_code" = 'NISSAN' AND "model_code" = 'GT-R'; --28.866 ms
SELECT "make_code", "model_title", "year" FROM "car_models" WHERE "make_code" = 'LAM'; --32.309 ms
SELECT * FROM "car_models" WHERE "year" BETWEEN 2010 AND 2015; --126.332 ms
SELECT * FROM "car_models" WHERE "year" = 2010; --68.814 ms

