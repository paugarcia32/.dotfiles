#oh-my-posh init pwsh --config "C:\Users\pauga\SB\4. Archive\Templates\custom_pwsh__theme.json" | Invoke-Expression
Invoke-Expression (&starship init powershell)
Import-Module -Name Terminal-Icons

$ENV:STARSHIP_CONFIG = "C:\Users\pauga\dev\.dotfiles\starship.toml"

function Set-DevDirectory {
    Set-Location "C:\Users\pauga\dev"
}

Set-Alias -Name dev -Value Set-DevDirectory

# ----------------- MAAT BACKEND CONFIG ----------------------
$env:FIREBASE_PROJECT = "checkin-test-fba3d"
$env:FIREBASE_TOKEN = "1//03Zpy1GCjoawICgYIARAAGAMSNwF-L9IrgLJ0-hoxLpHXFapkTojpTzlDAPUPPR1KkHpzlGJfGjfjUdGZjg2tCBgxKNBYU8xtPhU"
$env:STRIPE_API_KEY ="sk_test_A0KGGHxZry45IVkE6FlKufq000mdILRJPW"
$env:DEVICE_NAME = "pau"
$env:FUNCTIONS_DISCOVERY_TIMEOUT = 50
$env:SEED_AUTH_TIMEOUT = 150000


# -------------------------------------------------------------




# Define theme for dark mode
$DarkTheme = @{
    # Command                  = $PSStyle.Foreground.FromRGB(0x00BFFF) # Light Blue
    Command                  = "$($PSStyle.Foreground.Yellow)$($PSStyle.Bold)"
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
    #Command                  = $PSStyle.Foreground.FromRGB(0x00008B) # Dark Blue
    Command                  = "$($PSStyle.Foreground.Cyan)$($PSStyle.Bold)"
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



# Define theme for Monokai Pro
$MonokaiProTheme = @{
    Command                  = "$($PSStyle.Foreground.FromRGB(0xA6E22E))$($PSStyle.Bold)" # Green
    Comment                  = $PSStyle.Foreground.FromRGB(0x75715E) # Brownish gray
    ContinuationPrompt       = $PSStyle.Foreground.FromRGB(0x66D9EF) # Cyan
    Default                  = $PSStyle.Foreground.FromRGB(0xF8F8F2) # Off-white
    Emphasis                 = $PSStyle.Foreground.FromRGB(0xF92672) # Pink
    Error                    = $PSStyle.Foreground.FromRGB(0xFD971F) # Orange
    InlinePrediction         = $PSStyle.Foreground.FromRGB(0xA6E22E) # Green
    Keyword                  = $PSStyle.Foreground.FromRGB(0x66D9EF) # Cyan
    ListPrediction           = $PSStyle.Foreground.FromRGB(0xA6E22E) # Green
    Member                   = $PSStyle.Foreground.FromRGB(0xAE81FF) # Purple
    Number                   = $PSStyle.Foreground.FromRGB(0xAE81FF) # Purple
    Operator                 = $PSStyle.Foreground.FromRGB(0xF92672) # Pink
    Parameter                = $PSStyle.Foreground.FromRGB(0xFD971F) # Orange
    String                   = $PSStyle.Foreground.FromRGB(0xE6DB74) # Yellow
    Type                     = $PSStyle.Foreground.FromRGB(0x66D9EF) # Cyan
    Variable                 = $PSStyle.Foreground.FromRGB(0xA6E22E) # Green
    ListPredictionSelected   = $PSStyle.Background.FromRGB(0x49483E) # Dark Gray
    Selection                = $PSStyle.Background.FromRGB(0x75715E) # Brownish gray
}

# Define theme for Monokai Light Mode
$MonokaiLightTheme = @{
    Command                  = "$($PSStyle.Foreground.FromRGB(0x66D9EF))$($PSStyle.Bold)" # Light Blue
    Comment                  = $PSStyle.Foreground.FromRGB(0x75715E) # Brownish Gray
    ContinuationPrompt       = $PSStyle.Foreground.FromRGB(0xA6E22E) # Green
    Default                  = $PSStyle.Foreground.FromRGB(0x272822) # Dark Gray (Readable on light background)
    Emphasis                 = $PSStyle.Foreground.FromRGB(0xF92672) # Pink
    Error                    = $PSStyle.Foreground.FromRGB(0xFD971F) # Orange
    InlinePrediction         = $PSStyle.Foreground.FromRGB(0xAE81FF) # Purple
    Keyword                  = $PSStyle.Foreground.FromRGB(0x66D9EF) # Light Blue
    ListPrediction           = $PSStyle.Foreground.FromRGB(0xA6E22E) # Green
    Member                   = $PSStyle.Foreground.FromRGB(0xAE81FF) # Purple
    Number                   = $PSStyle.Foreground.FromRGB(0xF92672) # Pink
    Operator                 = $PSStyle.Foreground.FromRGB(0xF92672) # Pink
    Parameter                = $PSStyle.Foreground.FromRGB(0xFD971F) # Orange
    String                   = $PSStyle.Foreground.FromRGB(0xE6DB74) # Yellow
    Type                     = $PSStyle.Foreground.FromRGB(0x66D9EF) # Light Blue
    Variable                 = $PSStyle.Foreground.FromRGB(0xA6E22E) # Green
    ListPredictionSelected   = $PSStyle.Background.FromRGB(0xE6E6E6) # Light Gray
    Selection                = $PSStyle.Background.FromRGB(0xF8F8F2) # Off-White
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
    Set-Theme -Theme $MonokaiProTheme
} else {
    Set-Theme -Theme $MonokaiLightTheme
}