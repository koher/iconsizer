# iconsizer

_iconsizer_ is a pure Swift tool to generate icons of required sizes for iOS apps.

```bash
$ iconsizer path/to/original/Icon.png
```

```
Writing Icon-20@2x.png (actualSize = 40)
Writing Icon-20@3x.png (actualSize = 60)
Writing Icon-29@2x.png (actualSize = 58)
Writing Icon-29@3x.png (actualSize = 87)
Writing Icon-40@2x.png (actualSize = 80)
Writing Icon-40@3x.png (actualSize = 120)
Writing Icon-60@2x.png (actualSize = 120)
Writing Icon-60@3x.png (actualSize = 180)
Writing Icon-20.png (actualSize = 20)
Writing Icon-20@2x.png (actualSize = 40)
Writing Icon-29.png (actualSize = 29)
Writing Icon-29@2x.png (actualSize = 58)
Writing Icon-40.png (actualSize = 40)
Writing Icon-40@2x.png (actualSize = 80)
Writing Icon-76.png (actualSize = 76)
Writing Icon-76@2x.png (actualSize = 152)
Writing Icon-83.5@2x.png (actualSize = 167)
Writing Icon-1024.png (actualSize = 1024)
```

## How to build

```bash
swift build
```

## Requirements

- Swift 4
- macOS 10.12 or later

## Lisence

MIT
