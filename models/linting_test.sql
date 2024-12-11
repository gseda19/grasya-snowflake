WITH issues AS (
    SELECT * FROM {{ ref('my_first_dbt_model') }}
),

sprint_issues AS (
    SELECT * FROM {{ ref('my_first_dbt_model') }}
),

sprints AS (
    SELECT
        sprint_issues.sprint_issue_id,
        sprint_issues.issue_id,
        sprints.*
    FROM sprint_issues
    LEFT JOIN
        {{ ref('my_first_dbt_model') }} AS sprints
        ON sprint_issues.sprint_id = sprints.sprint_id
    WHERE
        sprints.is_deleted = FALSE
        AND sprints.name IS NOT NULL
)

SELECT
    sprints.sprint_issue_id,
    sprints.issue_id,
    sprints.sprint_id,
    sprints.name AS sprint_name,
    sprints.quarter,
    sprints.started_at as sprint_started_at,
    sprints.ended_at as sprint_ended_at,
    sprints.completed_at as sprint_completed_at,
    CASE
        WHEN
            issues.resolved_at > sprints.started_at
            AND issues.resolved_at <= sprints.ended_at
            THEN TRUE
        ELSE FALSE
    END AS was_completed_in_sprint,
    CASE
        WHEN
            sprints.completed_at IS NOT NULL
            THEN 'complete'
        WHEN CURRENT_TIMESTAMP() > sprints.started_at
            THEN 'in_progress'
        ELSE 'not_started'
    END AS sprint_status,
   'test' as new_field
FROM sprints
INNER JOIN issues ON sprints.issue_id = issues.issue_id
ORDER BY sprints.name DESC, issues.resolved_at DESC, issues.issue_id ASC
