-- downstream model currently referencing the raw layer
SELECT id, group_name, objective
FROM {{ ref('group_objectives') }}