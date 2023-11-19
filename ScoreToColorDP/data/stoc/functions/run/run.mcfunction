## カラーコードを設定
function stoc:run/tohex {color:"R"}
function stoc:run/tohex {color:"G"}
function stoc:run/tohex {color:"B"}
function stoc:run/tocolor with storage stoc

## ファンクションまたはコマンドを実行
data modify storage stoc command0 set from storage stoc command[0]
data modify storage stoc command1 set from storage stoc command[1]
execute unless data storage stoc command[1] run function stoc:run/function with storage stoc
execute if data storage stoc command[1] run function stoc:run/command with storage stoc