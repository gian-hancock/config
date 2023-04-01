# Monospace Font
- Cascadia Code: https://github.com/microsoft/cascadia-code
- There is also Cascadia Mono which is the same, but without ligatures

# Nerd Font
- Caskaydia Cove: https://www.nerdfonts.com/font-downloads
- Nerd Font version of Cascadia Code
- No version without ligatures

# Disabling ligatures in Windows Terminal
```
"font": 
{
    "face": "CaskaydiaCove Nerd Font Mono",
    "features": 
    {
        "calt": 0
    }
}
...
```