scoreboard players set @s saber_active 1
item modify entity @s weapon.mainhand {SaberActive:1b}

tellraw @s {"text":"[Melon Saber] Activated – true damage ON. Will consume 1 melon every 5 seconds.","color":"green"}
