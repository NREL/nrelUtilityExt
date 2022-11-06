# Changelog

This file tracks notable changes to **nrelUtilityExt**. The format is based on
[Keep a Changelog], and this project adheres to [Semantic Versioning].

[Keep a Changelog]: https://keepachangelog.com/ "Keep a Changelog"
[Semantic Versioning]: https://semver.org/ "Semantic Versioning"

## [v1.1.2] (2018-10-10)

[v1.1.2]: https://github.com/NREL/nrelUtilityExt/releases/tag/v1.1.2

[View Changes](https://github.com/NREL/nrelUtilityExt/compare/v1.1.1...v1.1.2)

### Changes

- Renamed project from **utilityExt** to **nrelUtilityExt**

## [v1.1.1] (2018-10-09)

[v1.1.1]: https://github.com/NREL/nrelUtilityExt/releases/tag/v1.1.1

## Added

- Initial public release of NREL's utility functions

### Security

- `stringToDict()` and `stringToList()` in this version (and all 1.x versions)
  wrap SkySpark's `eval()` function, which presents a security risk if the
  source string is of unknown provenance. Use with caution.