select
bikes.*
from {{ source('bikes', 'my_ext_table') }} as bikes