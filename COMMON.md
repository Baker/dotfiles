# The common stuff

This is just a readme of the common quirks I have encountered while building out this project.

## Ubuntu

### Command not found: Make

I noticed this issue specifically with WSL ubuntu, the fix I found was just installing the `build-essential`:

```
sudo apt install build-essential
```

### `permission denied: ./setup.sh`

This another common run I have run into strictly with Ubuntu WSL for some reason. Thankfully the fix is easy:

```
chmod u+x ./setup.sh
```
