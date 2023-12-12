## TextColor:Decimal -> R,G,B
scoreboard players operation ##Decimal1 TextColor = @s TextColorDecimal
scoreboard players operation ##Decimal1 TextColor /= ###65536 TextColor

scoreboard players operation ##Decimal2 TextColor = @s TextColorDecimal
scoreboard players operation ##Decimal2 TextColor %= ###65536 TextColor
scoreboard players operation ##Decimal2 TextColor /= ###256 TextColor

scoreboard players operation ##Decimal3 TextColor = @s TextColorDecimal
scoreboard players operation ##Decimal3 TextColor %= ###256 TextColor

## RGBを設定
scoreboard players operation ##R TextColor = ##Decimal1 TextColor
scoreboard players operation ##G TextColor = ##Decimal2 TextColor
scoreboard players operation ##B TextColor = ##Decimal3 TextColor

## 実行
$data modify storage stoc command set value ['$(command)']
function stoc:run/run