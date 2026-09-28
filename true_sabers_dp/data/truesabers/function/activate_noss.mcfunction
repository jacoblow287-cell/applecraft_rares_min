# Activate Noss Saber for the player

# Set active flag
scoreboard players set @s saber_active 1

# Set SaberActive tag on the sword in mainhand
item modify entity @s weapon.mainhand {SaberActive:1b}

tellraw @s {"text":"[Noss Saber] Activated – true damage ON. Will consume 1 amethyst shard every 5 seconds.","color":"aqua"}
