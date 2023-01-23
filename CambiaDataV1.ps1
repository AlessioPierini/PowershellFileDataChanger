# Richiesta 
$Title = "Vuoi cambiare data?"
$Prompt = "Scegli se ad un file o ad una cartella"
$Choices = [System.Management.Automation.Host.ChoiceDescription[]] @("&File", "&Cartella", "&Esci")
$Default = 1

# scelta
$Choice = $host.UI.PromptForChoice($Title, $Prompt, $Choices, $Default)

# Azioni
switch($Choice)
{
    0 {
$namef = read-host "Inserisci il file"  
$datew = read-host "Data scrittura GG/MM/AA HH:MM:SS"
$datec = read-host "Data creazione GG/MM/AA HH:MM:SS"
$file = Get-Item $namef
$file.LastWriteTime = ($datew)
$file.CreationTime = ($datec)}

    1 {
$namec = read-host "Inserisci cartella"
$datew = read-host "Data scrittura GG/MM/AA HH:MM:SS"
$datec = read-host "Data creazione GG/MM/AA HH:MM:SS"
$folder = Get-Item $namec
$file.LastWriteTime = ($datew)
$folder.CreationTime = ($datec)}
    2 { Write-Host "Exit"}
}


