SELECT *
, 'This is downstream model' AS downstream2_model
FROM {{ ref('bikes_downstream_to_staging')}}