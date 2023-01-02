# AutoHotKey
`_caps_nav.exe` is an executable which allows the following navigation commands

```
/* 
| -------------------------------- | -------------------------------- |
| Shortcut                         | Output                           |
| CAPSLOCK + { i, j, k, l }        | { Up, Left, Down, Right }        |
| CAPSLOCK + { u, o }              | { Home, End }                    |
| CAPSLOCK + { h, ; }              | { Backspace, Delete}             |
| CAPSLOCK + { m, . }              | CTRL + { Left, Right }
*/
```

`_caps_nav.ahk` is an AHK script with roughly corresponds to the executable described above. I've actually lost the exact source for the executable.

## Automatic Startup
For automatic startup place a shortcut to this script in the directory `%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup`