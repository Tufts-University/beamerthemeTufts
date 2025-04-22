# Tufts University Beamer Theme

A custom LaTeX Beamer theme for Tufts University presentations, designed to match the university's official branding guidelines.

## Overview

This theme provides a professional and consistent presentation style that adheres to Tufts University's visual identity. It features:

- Official Tufts blue colour scheme
- University logo integration
- Customised block and item styles
- Consistent typography and layout

For the complete set of Tufts University branding guidelines, please visit [brand.tufts.edu/guidelines](https://brand.tufts.edu/guidelines).

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/beamerthemeTufts.git
   ```

2. Place the following files in your LaTeX project directory:
   - `beamerthemeTufts.sty`
   - `Tufts_univ_blue.pdf` (or `Tufts_univ_blue.eps`)

## Usage

To use the theme in your LaTeX presentation, add the following to your preamble:

```latex
\documentclass{beamer}
\usetheme{Tufts}
```

## Features

- **Colour Scheme**: Uses the official Tufts blue (RGB: 49,114,174)
- **Logo**: Automatically includes the Tufts University logo on the title page
- **Typography**: 
  - White text on blue backgrounds for titles
  - Blue text on white backgrounds for frame titles
  - Consistent item and block styling
- **Layout**: 
  - Rounded inner theme with shadow
  - Infoframes outer theme
  - Beaver colour theme as base

## Example

An example presentation (`example.tex`) is included in this repository. To compile it:

```bash
make
```

This will generate `example.pdf` using the provided Makefile.

## Requirements

- LaTeX distribution (e.g., TeX Live, MiKTeX)
- Beamer class
- PDF or EPS viewer for the logo
- `latexmk` for automated compilation (or `tectonic` as an alternative)

## License

This theme is provided under the MIT License. The Tufts University logo and branding elements are property of Tufts University and should be used in accordance with the university's branding guidelines.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Acknowledgements

- Based on the official Tufts University branding guidelines
- Inspired by the standard Beamer themes
