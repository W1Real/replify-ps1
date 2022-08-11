function get_input($s){
    Write-Host "$s>" -ForegroundColor white -BackgroundColor DarkGray -NoNewLine
    Write-Host " " -NoNewLine
    return $Host.UI.ReadLine()
}

$initial_prompt = $args[0]
Write-Host "Initialized REPL for $initial_prompt" -ForegroundColor white -BackgroundColor DarkGray
$prompt = get_input($initial_prompt)
Do  
{  
    Invoke-Expression "$initial_prompt $prompt"
    $prompt = get_input($initial_prompt)
} until ($prompt -eq '')
