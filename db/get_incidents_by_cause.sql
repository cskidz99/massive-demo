select inc.id,
  inc.us_state,
  inj.name as injury,
  a.name as affected_area,
  c.name as cause
from incidents inc
join injuries inj
  on inc.injury_id = inj.id
join affected_areas a
  on a.id = inj.affected_area_id
join causes c
  on c.id = inc.cause_id
  where c.name iLike $1;
