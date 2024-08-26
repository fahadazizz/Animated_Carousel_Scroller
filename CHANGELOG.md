## 0.0.1

# Changelog

All notable changes to this project will be documented in this file. The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Initial release of `animated_carousel_scroller` package with basic carousel functionality.

## [1.0.0] - 2024-08-26

### Added
- **Initial Release**: Introduced `AnimatedCarouselScroller` widget.
  - **Images**: Accepts a list of image asset paths.
  - **Initial Index**: Allows setting the initially selected image.
  - **Duration**: Configurable animation duration for size and opacity changes.
  - **Height**: Adjustable height for carousel images.
  - **Width**: Customizable width for selected and non-selected images.

### Fixed
- Resolved initial selection index issue in carousel.

### Changed
- Adjusted animation duration and default values for improved performance.

## [1.0.1] - 2024-09-15

### Added
- **Documentation**: Added usage examples and detailed parameters in the README.md file.

### Fixed
- Minor layout adjustments to improve visual consistency across different screen sizes.

### Changed
- Enhanced the `CHANGELOG.md` format for better clarity and consistency.

## [1.1.0] - 2024-10-01

### Added
- **Customizability**: Enhanced customization options for `currentCrouselWidth` and `otherCrouselWidth`.
- **Support**: Added support for dynamic updates to the list of images without rebuilding the widget.

### Fixed
- Fixed an issue where image aspect ratios were not maintained properly on certain devices.

### Changed
- Updated default values for animation duration to provide a smoother user experience.

## [1.2.0] - 2024-10-15

### Added
- **Performance**: Improved performance of image loading and animation transitions.
- **Example**: Added a sample project with integrated carousel widget for better understanding.

### Fixed
- Fixed minor UI bugs related to image scaling on different devices.

### Changed
- Updated the README.md file with new examples and customization tips.
- Refined the code to adhere to best practices and optimize performance.

---

Feel free to update this file as new versions are released. Documenting changes helps users understand the evolution of the package and ensures they are aware of new features, improvements, and bug fixes.

