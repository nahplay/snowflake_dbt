SELECT * 
, 'This is downstream model' AS downstream_model
FROM {{ ref('bikes_staging')}}