$curdir = Get-Location

## basic settings
$appName = 'AppDehum'
$copyRoot = Join-Path '..\..\Coding' $appName
$root = '.'

## copy from master repo
if (Test-Path -Path $copyRoot) {
    Copy-Item -Path (Join-Path $copyRoot 'dehum.tapp') -Destination $root -Force
    $imagesSrc = Join-Path $copyRoot 'images'
    $imagesDest = Join-Path $root 'images'
    if (Test-Path -Path $imagesSrc) {
        ## ensure a clean destination before copying
        if (Test-Path -Path $imagesDest) {
            Remove-Item -Path $imagesDest -Recurse -Force
        }
        Copy-Item -Path $imagesSrc -Destination $imagesDest -Recurse -Force
    }
    $readmeEn = Join-Path $copyRoot 'Readme_EN.md'
    if (Test-Path -Path $readmeEn) {
        Copy-Item -Path $readmeEn -Destination (Join-Path $root 'README.md') -Force
    }
}
