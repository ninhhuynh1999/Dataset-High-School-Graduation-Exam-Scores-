with 
point_rows AS (
    SELECT generate_series(0, 10) AS point
),
math_count as (
	select floor(math) as point, count(*) as count
	from scores
	where math is not null 
	group by point
),
literature_count as (
	select floor(literature) as point, count(*) as count
	from scores
	where literature is not null 
	group by point
),
foreign_language_count as (
	select floor(foreign_language) as point, count(*) as count
	from scores
	where foreign_language is not null 
	group by point
),
physics_count as (
	select floor(physics) as point, count(*) as count
	from scores
	where physics is not null 
	group by point
),
chemistry_count as (
	select floor(chemistry) as point, count(*) as count
	from scores
	where chemistry is not null 
	group by point
),
biology_count as (
	select floor(biology) as point, count(*) as count
	from scores
	where biology is not null 
	group by point
),
history_count as (
	select floor(history) as point, count(*) as count
	from scores
	where history is not null 
	group by point
),
geography_count as (
	select floor(geography) as point, count(*) as count
	from scores
	where geography is not null 
	group by point
),
civic_education_count as (
	select floor(civic_education) as point, count(*) as count
	from scores
	where civic_education is not null 
	group by point
)


select 
	point_rows.point, 
	math_count.count as TOAN,
	literature_count.count as NGU_VAN,
	foreign_language_count.count as NGOAI_NGU,
	physics_count.count as VAT_LY,
	chemistry_count.count as HOA_HOC,
	biology_count.count as SINH_HOC,
	history_count.count as LICH_SU,
	geography_count.count as DIA_LY,
	civic_education_count.count as GDCD
from point_rows
left join math_count using (point)
left join literature_count using (point)
left join foreign_language_count using (point)
left join physics_count using (point)
left join chemistry_count using (point)
left join biology_count using (point)
left join history_count using (point)
left join geography_count using (point)
left join civic_education_count using (point)
