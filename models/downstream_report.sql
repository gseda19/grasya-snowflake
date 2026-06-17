SELECT id, group_name, objective
FROM {{ ref('group_objectives') }}