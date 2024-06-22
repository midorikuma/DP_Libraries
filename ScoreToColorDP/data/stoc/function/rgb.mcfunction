## TextColor:R,G,B
## RGBを設定
scoreboard players operation ##R TextColor = @s TextColorR
scoreboard players operation ##G TextColor = @s TextColorG
scoreboard players operation ##B TextColor = @s TextColorB

## 実行
$data modify storage stoc command set value ['$(command)']
function stoc:run/run