## TextColor:R,G,B
## RGBを設定
scoreboard players operation ##R TextColor = @s TextColorR
scoreboard players operation ##G TextColor = @s TextColorG
scoreboard players operation ##B TextColor = @s TextColorB

scoreboard players operation ##R TextColor %= ###256 TextColor
scoreboard players operation ##G TextColor %= ###256 TextColor
scoreboard players operation ##B TextColor %= ###256 TextColor

## 実行
$data modify storage stoc command set value ['$(command)']
function stoc:run/run