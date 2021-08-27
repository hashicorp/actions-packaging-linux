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
