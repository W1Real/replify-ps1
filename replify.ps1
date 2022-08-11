function get_input($s){
    Write-Host "$s>" -NoNewLine
    Write-Host " " -NoNewLine
    return $Host.UI.ReadLine()
}

$initial_prompt = $args[0]
Write-Host "Initialized REPL for $initial_prompt"
$prompt = get_input($initial_prompt)
Do  
{  
    Invoke-Expression "$initial_prompt $prompt"
    Write-Host ""
    $prompt = get_input($initial_prompt)
} until ($prompt -eq '')
