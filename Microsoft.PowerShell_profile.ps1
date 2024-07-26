#oh-my-posh init pwsh --config "C:\!Main\customs\custom_pwsh__theme.json"| Invoke-Expression


if (Get-Command 'starship' -ErrorAction SilentlyContinue) {
  function Invoke-Starship-PreCommand {
    if ($global:profile_initialized -ne $true) {
      $global:profile_initialized = $true
      Initialize-Profile
    }
  }
  Invoke-Expression (&starship init powershell)
}

Import-Module -Name Terminal-Icons

$ENV:STARSHIP_CONFIG = "C:\!Main\customs\starship.toml"



$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}


function gotoa { set-location "E:/" }
new-alias dev gotoa






# Define theme for dark mode
$DarkTheme = @{
    Command                  = $PSStyle.Foreground.FromRGB(0x00BFFF) # Light Blue
    Comment                  = $PSStyle.Foreground.FromRGB(0x7CFC00) # Lawn Green
    ContinuationPrompt       = $PSStyle.Foreground.FromRGB(0x00BFFF)
    Default                  = $PSStyle.Foreground.FromRGB(0xFFFFFF) # White
    Emphasis                 = $PSStyle.Foreground.FromRGB(0xFF4500) # Orange Red
    Error                    = $PSStyle.Foreground.FromRGB(0xFF0000) # Red
    InlinePrediction         = $PSStyle.Foreground.FromRGB(0xADD8E6) # Light Blue
    Keyword                  = $PSStyle.Foreground.FromRGB(0x1E90FF) # Dodger Blue
    ListPrediction           = $PSStyle.Foreground.FromRGB(0x00FF00) # Green
    Member                   = $PSStyle.Foreground.FromRGB(0xFFD700) # Gold
    Number                   = $PSStyle.Foreground.FromRGB(0xDA70D6) # Orchid
    Operator                 = $PSStyle.Foreground.FromRGB(0xF0E68C) # Khaki
    Parameter                = $PSStyle.Foreground.FromRGB(0xFFA07A) # Light Salmon
    String                   = $PSStyle.Foreground.FromRGB(0xFF6347) # Tomato
    Type                     = $PSStyle.Foreground.FromRGB(0x40E0D0) # Turquoise
    Variable                 = $PSStyle.Foreground.FromRGB(0xFF8C00) # Dark Orange
    ListPredictionSelected   = $PSStyle.Background.FromRGB(0x2E8B57) # Sea Green
    Selection                = $PSStyle.Background.FromRGB(0x4682B4) # Steel Blue
}

# Define theme for light mode
$LightTheme = @{
    Command                  = $PSStyle.Foreground.FromRGB(0x00008B) # Dark Blue
    Comment                  = $PSStyle.Foreground.FromRGB(0x006400) # Dark Green
    ContinuationPrompt       = $PSStyle.Foreground.FromRGB(0x00008B)
    Default                  = $PSStyle.Foreground.FromRGB(0x000000) # Black
    Emphasis                 = $PSStyle.Foreground.FromRGB(0x8B0000) # Dark Red
    Error                    = $PSStyle.Foreground.FromRGB(0xB22222) # Firebrick
    InlinePrediction         = $PSStyle.Foreground.FromRGB(0x708090) # Slate Gray
    Keyword                  = $PSStyle.Foreground.FromRGB(0x8A2BE2) # Blue Violet
    ListPrediction           = $PSStyle.Foreground.FromRGB(0x008000) # Green
    Member                   = $PSStyle.Foreground.FromRGB(0x8B4513) # Saddle Brown
    Number                   = $PSStyle.Foreground.FromRGB(0x4B0082) # Indigo
    Operator                 = $PSStyle.Foreground.FromRGB(0x2F4F4F) # Dark Slate Gray
    Parameter                = $PSStyle.Foreground.FromRGB(0x000080) # Navy
    String                   = $PSStyle.Foreground.FromRGB(0xA52A2A) # Brown
    Type                     = $PSStyle.Foreground.FromRGB(0x008B8B) # Dark Cyan
    Variable                 = $PSStyle.Foreground.FromRGB(0xD2691E) # Chocolate
    ListPredictionSelected   = $PSStyle.Background.FromRGB(0xD3D3D3) # Light Gray
    Selection                = $PSStyle.Background.FromRGB(0x87CEEB) # Sky Blue
}

# Function to switch theme
function Set-Theme ($Theme) {
    Set-PSReadLineOption -Colors $Theme
}

# Get system theme
function Get-SystemTheme {
    try {
        $themeSetting = Get-ItemPropertyValue -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme"
        return $themeSetting -eq 0
    } catch {
        return $false
    }
}

# Set theme based on system theme
if (Get-SystemTheme) {
    Set-Theme -Theme $DarkTheme
} else {
    Set-Theme -Theme $LightTheme
}
