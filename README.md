This fork bases on my fork of [`spotify-cli-linux`](https://github.com/flip1995/spotify-cli-linux).
Sadly the PR for this got rejected: [pwittchen/tmux-plugin-spotify#2](https://github.com/pwittchen/tmux-plugin-spotify/pull/2#issuecomment-447658812)

# tmux-plugin-spotify
tmux plugin displaying currently played song on Spotify

**Note**: currently it works on Linux only!

Requirements
------------

In order to use this plugin, you need to install [spotify-cli-linux](https://github.com/pwittchen/spotify-cli-linux) program.

You can do it with the following command:

```
pip install spotify-cli-linux
```

Installation
------------
### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

```
set -g @plugin 'pwittchen/tmux-plugin-spotify'
```

Hit `prefix + I` to fetch the plugin and source it.

If format strings are added to `status-right`, they should now be visible.

Usage
-----

In order to see the current status of Spotify via this tmux plugin, add one or
more of the following commands to your `.tmux.conf` file:

- `#{spotify_status_full}`: `Artist - Title`
- `#{spotify_status}`: `Artist - Title` (Limits the artists name to 15 and the title to 10 characters)
- `#{spotify_song}`: `Title` (Limits title to 10 characters by default)
- `#{spotify_artist}`: `Artist` (Limits artist name to 15 characters by default)
- `#{spotify_album}`: `Album`
- `#{spotify_playback}`: The playback status (UTF-8)

To modify the length of the song title and artist you can set the two options:

```tmux
set -g @spotify_song_length 10
set -g @spotify_artist_length 15
```

_Note:_ These options only have an effect on the `#{spotify_song}` and
`#{spotify_artist}` attributes, not on the `#{spotify_status}`.

References
----------
- https://github.com/tmux-plugins
- https://github.com/tmux-plugins/tmux-example-plugin
- https://github.com/tmux-plugins/tmux-battery
- https://github.com/pwittchen/dotfiles
- https://github.com/pwittchen/spotify-cli-linux
