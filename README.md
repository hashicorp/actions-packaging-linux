# Package

This is a GitHub Action wrapper around nFPM, used to produce DEBs and RPMs.

### Inputs

| Input              | Description                                               | Default                |
| ------------------ | --------------------------------------------------------- | ---------------------- |
| `name`       | Product name.  |                        |
| `arch`       | Build architecture.                      |                |
| `version`    | Product semver version. |  |
| `maintainer` | Maintainer name. | |
| `description` | Product description. | |
| `homepage`    | Product homepage. | |
| `license`     | Product usage license. | |
| `binary`      | Binary location to package. | |
| `config_dir`  | Directory of configs in desired filesystem structure. | |
| `deb_depends` | Comma separated list of deb dependencies. | |
| `rpm_depends` | Comma separated list of rpm dependencies. | |
| `preinstall`  | Preinstall script location. | |
| `postinstall` | Postinstall script location. | |
| `preremove`   | Preremove script location. | |
| `postremove`  | Postremove script location. | |

## Release Instructions

A new release has two parts: git tags, and a GitHub release.  Look at the
current tags to determine what the next version should be.  In the instructions
below, replace `v1` with `vN` where N is the major version of the new release
if it's not `1`.

1. `git checkout main && git pull origin main`
1. `git tag v<new-version-number> && git push origin v<new-version-number>`
1. Push the tag while you're on the `main` branch
1. `git tag -d v1 && git push origin :refs/tags/v1`
1. `git tag v1 && git push origin v1`
