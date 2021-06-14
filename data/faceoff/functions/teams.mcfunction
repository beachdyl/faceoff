team add r "Red Team"
team add g "Green Team"
team add b "Blue Team"
team modify r collisionRule pushOwnTeam
team modify g collisionRule pushOwnTeam
team modify b collisionRule pushOwnTeam
team modify r prefix ""
team modify g prefix ""
team modify b prefix ""
team modify r suffix " (Alive)"
team modify g suffix " (Alive)"
team modify b suffix " (Alive)"
team modify r friendlyFire false
team modify g friendlyFire false
team modify b friendlyFire false
team modify r seeFriendlyInvisibles true
team modify g seeFriendlyInvisibles true
team modify b seeFriendlyInvisibles true
team modify r deathMessageVisibility always
team modify g deathMessageVisibility always
team modify b deathMessageVisibility always
team modify r nametagVisibility hideForOtherTeams
team modify g nametagVisibility hideForOtherTeams
team modify b nametagVisibility hideForOtherTeams
team modify r color red
team modify g color green
team modify b color blue