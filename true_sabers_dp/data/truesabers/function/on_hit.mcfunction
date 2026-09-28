# Called when any player hurts an entity.
# We only add extra damage if they have an active saber.

# Store the hurt entity in a tag for convenience
tag @e add saber_hit_target

# For players with active saber, deal +2 damage to the entity they just hit.
# We use the 'hurt_entity' context via the advancement; the damaged entity is the one we just hit.
execute as @a[scores={saber_active=1..}] at @s run damage @e[tag=saber_hit_target,limit=1,sort=nearest] 2

# Clean up tag
tag @e remove saber_hit_target
