# ================================================================================
# スクリプトを実行したカレントディレクトリにある HEIC ファイルを JPG に変換する
# ConvertTo-Jpeg.ps1 を使用する
# ================================================================================

# スクリプトを呼び出したカレントディレクトリを指定する
[String]$targetDirectory = Get-Location

Write-Host "`n処理開始 : $targetDirectory"

# 対象ディレクトリ配下の HEIC ファイルを取得し ConvertTo-Jpeg.ps1 を適用する
Get-ChildItem $targetDirectory | Where-Object { $_.Extension.ToLower() -eq ".heic" } | ConvertTo-Jpeg.ps1

Write-Host "`n処理完了"
