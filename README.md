# dotfiles
Configuration files for Linux, especially ArchLinux, that I personally use.

# ArchLinux

## Pacman hooks

### enable_libreoffice_on_shared.hook

If you want to open libreoffice from shared locactions (for example, rclone, sftp, ...) this hooks enable this.

- See [Bug at Document Foundation](https://bugs.documentfoundation.org/show_bug.cgi?id=67527)
- See [Question at Libreoffice](https://ask.libreoffice.org/en/question/26729/413-wont-open-files-over-the-network/)

### remove_old_cache.hook

Removes old packages, keeps the current and last old version.

### update_elasticsearch_plugins.hook

Elasticsearch plugins needs reinstall after update, update this hook to match your installed plugins.

### update_mirrorlist.hook

Updates the mirrorlist with the help of reflector.

# Games

## Portal 2

Put `autoexec.cfg` in `<Path/to/SteamLibrary>/steamapps/common/Portal 2/portal2/bin/cfg` to enable:

- Easy access to the developer console on Nordic keyboard (since the default `~` is hard to access) with `F11`.
- Key-bindings for starting a local co-op game using keyboard and one gamepad.
    - Press `F9` to start local co-op game.
    - When started, press `F10` to toggle keyboard to Player 2.
