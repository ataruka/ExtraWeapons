############
### mt: Seed[-4][-4][-4][-4][-4].value
### からシード値を取得
### $MT-Seed Input1 にIndexを入力
############


function mt:seed/shift
execute store result score $MT-Seed MT-Output run data get storage mt: Seed[-4][-4][-4][-4][-4].value