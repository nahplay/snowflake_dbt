select
bikes.*
, registered/cnt as registered_count_ratio
from {{ source('bikes', 'bikes') }} as bikes