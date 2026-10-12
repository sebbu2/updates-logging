@echo off
pipx --version > %DATA%\pipx.txt 2>&1
pipx list --include-injected -v > %DATA%\pipx-l.txt 2>&1
pipx list --json | jq ".venvs|to_entries[]|{key: .key, package: .value.metadata.main_package.package, url:.value.metadata.main_package.package_or_url}" > %DATA%\pipx-l.json 2>&1
