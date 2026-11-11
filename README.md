# pockethost/homebrew-tap

Homebrew formulas from [PocketHost](https://pockethost.io).

## PocketBase Community Edition

```bash
brew install pockethost/tap/pocketbase
```

[PocketBase CE](https://github.com/pockethost/pocketbase) is a community fork of PocketBase with plugins, including
[pages](https://github.com/pockethost/pocketbase/tree/main/ext/pages) (server-rendered sites from a `pb_pages`
folder). Not affiliated with the PocketBase project.

```bash
pocketbase serve
pocketbase pages create myapp   # a site from a starter kit
```

Upgrade with `brew upgrade pocketbase`. The formula is updated automatically on each
[release](https://github.com/pockethost/pocketbase/releases).

If you also have Homebrew's own `pocketbase` formula installed, both provide a `pocketbase` command; keep one.
