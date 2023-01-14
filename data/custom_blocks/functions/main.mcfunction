# MAIN
execute as @e[type=minecraft:item_frame,tag=luckyblock,tag=!placed] at @s run function custom_blocks:lucky_block/place
execute as @e[type=minecraft:item_frame,tag=luckyblock,tag=placed] at @s unless block ~ ~ ~ minecraft:glass run function custom_blocks:lucky_block/remove

execute as @e[type=minecraft:item_frame,tag=rubyore] at @s run function custom_blocks:ruby_ore/place
execute as @e[type=minecraft:armor_stand,tag=rubyore] at @s unless block ~ ~0.5 ~ minecraft:stone run function custom_blocks:ruby_ore/remove