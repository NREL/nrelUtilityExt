# Changelog

This file tracks notable changes to **nrelUtilityExt**. The format is based on
[Keep a Changelog], and this project adheres to [Semantic Versioning].

[Keep a Changelog]: https://keepachangelog.com/ "Keep a Changelog"
[Semantic Versioning]: https://semver.org/ "Semantic Versioning"

## Unreleased

[View Changes](https://github.com/NREL/nrelUtilityExt/compare/v1.1.4...develop)

### Added

- `fiscalYear()`, `thisFiscalYear()`, `lastFiscalYear()`: Fiscal year date range
  functions
- `toDayList`, `toWeekList`, `toMonthList`, `toYearList`, `toFiscalYearList`:
  Generate lists of date ranges at regular intervals that enclose a time span
- `parseAuto()`, `parseCoord()`, `parseDict()`, `parseList()`: Parsing functions
- `orAll()`, `andAll()`: Logical OR and AND fold functions
- `product()`: Cumulative product fold function
- `nmbe()`, `cvrmse()`: Functions to calculate the normalized mean bias error
  (NBME) and coefficient of variation of the root-mean-square error (CV\[RMSE\])
  per ASHRAE Guideline 14
- [Change log](https://github.com/NREL/nrelUtilityExt/blob/main/CHANGELOG.md)

### Changed

- `importFunctions()`, `exportFunctions()`: extensively modified to add
  features and improve internal consistency; **not backwards-compatible with 1.x
  versions!**
- `replace2()` is now recursive for lists and dicts
- Most functions are now `overridable`
- Include function trace (`funcTrace` tag) with all logged warnings

### Deprecated

- `parseRef2()`: In SkySpark 3.1.2, `parseRef()` was updated to strip leading
  `"@"`, so `parseRef2()` is no longer needed

### Removed

- `isNull()`: SkySpark 3.1.3+ now includes it as a base function
- `stringToDict()`, `stringToList()`: Replaced by (safer) functions
  `parseDict()` and `parseList()` 

## [v1.1.4] (2021-12-02)

[v1.1.4]: https://github.com/NREL/nrelUtilityExt/releases/tag/v1.1.4

[View Changes](https://github.com/NREL/nrelUtilityExt/compare/v1.1.3...v1.1.4)

### Changed

- `importFunctions()` and `exportFunctions()` automatically add `io/` prefix and
  `.trio` suffix to filename if needed
- Various clarifications to *README.md*

### Fixed

- Updated dependencies and build for compatibility with both SkySpark 3.0.x and
  3.1.x.

## [v1.1.3] (2018-10-16)

[v1.1.3]: https://github.com/NREL/nrelUtilityExt/releases/tag/v1.1.3

[View Changes](https://github.com/NREL/nrelUtilityExt/compare/v1.1.2...v1.1.3)

### Added

- Publish to [StackHub](https://stackhub.org/)

### Changed

- The `keep` option no longer affects `semiJoin()` and `antiJoin()`
- `method` argument of `joinWithMethod()` is no longer case sensitive

### Fixed

- Empty grids combined with user-specified join columns now behave as expected
  instead of producing an error.

## [v1.1.2] (2018-10-10)

[v1.1.2]: https://github.com/NREL/nrelUtilityExt/releases/tag/v1.1.2

[View Changes](https://github.com/NREL/nrelUtilityExt/compare/v1.1.1...v1.1.2)

### Changes

- Renamed project from **utilityExt** to **nrelUtilityExt**

## [v1.1.1] (2018-10-09)

[v1.1.1]: https://github.com/NREL/nrelUtilityExt/releases/tag/v1.1.1

### Added

- Initial public release of NREL's utility functions

### Security

- `stringToDict()` and `stringToList()` in this version (and all 1.x versions)
  wrap SkySpark's `eval()` function, which presents a security risk if the
  provenance of the source string is unknown. Use with caution.