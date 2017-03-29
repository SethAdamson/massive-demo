select inc.id, inc.us_state, inj.name as injury, aff.name as affectedArea, c.name as cause
from incidents inc
join injuries inj on inc.injury_id = inj.id
join affected_areas aff on aff.id = inj.affected_area_id
join causes c on c.id = inc.cause_id
where us_state = $1
