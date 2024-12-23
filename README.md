# Brightness Adjustment Script

This script allows you to adjust the brightness of all connected monitors using the `xrandr` command. The brightness level is specified as a command-line argument ranging from `0` (completely dark) to `1` (maximum brightness).

## Prerequisites

- **`xrandr`**: Ensure `xrandr` is installed on your system. You can install it on Arch Linux with:
```bash
sudo pacman -S xorg-xrandr
```

## Installation

1. Download or clone the script.
2. Make the script executable:

```bash
chmod +x main.sh
```

## Usage

```bash
./main.sh <brightness>
```

## Example

Set the brightness to 0.5 (50% brightness):

```bash
./main.sh 0.5
```

### Notes

- Brightness Range:
    - The brightness value must be between 0 and 1.
        - 0.0: Completely dark.
        - 1.0: Full brightness.
- The script automatically adjusts the brightness of all connected monitors.
- If no monitors are detected, the script will output an error.

## Troubleshooting
Error: ```xrandr: command not found ```

Ensure that xrandr is installed:
```bash
sudo pacman -S xorg-xrandr
```
