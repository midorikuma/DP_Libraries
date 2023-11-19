## TextColor:Digi -> R,G,B
scoreboard players operation ##Digit1 TextColor = @s TextColorDigit
scoreboard players operation ##Digit1 TextColor /= ###65536 TextColor

scoreboard players operation ##Digit2 TextColor = @s TextColorDigit
scoreboard players operation ##Digit2 TextColor -= ##Digi1 TextColor
scoreboard players operation ##Digit2 TextColor /= ###256 TextColor

scoreboard players operation ##Digit3 TextColor = @s TextColorDigit
scoreboard players operation ##Digit3 TextColor %= ###256 TextColor

## RGBを設定
scoreboard players operation ##R TextColor = ##Digit1 TextColor
scoreboard players operation ##G TextColor = ##Digit2 TextColor
scoreboard players operation ##B TextColor = ##Digit3 TextColor

## 実行
$data modify storage stoc command set value ['$(command)']
function stoc:run/run