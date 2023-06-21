# actions-packaging-linux [![Heimdall](https://heimdall.hashicorp.services/api/v1/assets/actions-packaging-linux/badge.svg?key=a504c3bd609f201a9718f56fc5e56613de4d6a052794adf9b06b2a529ddd741a)](https://heimdall.hashicorp.services/site/assets/actions-packaging-linux)

_For internal HashiCorp use only. The output of this action is specifically designed to satisfy the needs of our internal deployment system, and may not be useful to other organizations._

This is a GitHub Action wrapper around nFPM, used to produce DEBs and RPMs.

### Inputs

| Input              | Description                                               | Default                |
| ------------------ | --------------------------------------------------------- | ---------------------- |
| `name`       | Product name.  |                        |
| `arch`       | Build architecture.                      |                |
| `version`    | Product semver version. |  |
| `maintainer` | Maintainer name. | |
| `vendor`     | Default vendor. | HashiCorp |
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

