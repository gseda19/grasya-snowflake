{{ config(materialized='table') }}
select a.fk_agency, m.agency_name, count(*) as n_accounts
from {{ ref('ent_agency_account') }} a
left join {{ ref('ent_media_agency') }} m on a.fk_agency = m.pk_agency
group by 1, 2