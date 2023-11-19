$scoreboard players operation ##tmp TextColor = ##$(color) TextColor
scoreboard players operation ##tmp TextColor /= ###16 TextColor
execute store result storage stoc tmp int 1 run scoreboard players get ##tmp TextColor
function stoc:run/tovalue with storage stoc
$data modify storage stoc $(color)0 set string storage stoc tmp

$scoreboard players operation ##tmp TextColor = ##$(color) TextColor
scoreboard players operation ##tmp TextColor %= ###16 TextColor
execute store result storage stoc tmp int 1 run scoreboard players get ##tmp TextColor
function stoc:run/tovalue with storage stoc
$data modify storage stoc $(color)1 set string storage stoc tmp
