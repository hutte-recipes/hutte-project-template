# This repository contains

## Skeleton SF Project

Created with  ```sf project generate```, with

- a custom Salesforce theme, a sample Apex class and LWC
- an exemplatory Hutte configuration file (hutte.yml) which applies the custom Salesforce theme after Scratch Org creation, and creates a custom button to run a data import
- sample data set to demonstrate data import via Hutte custom button

## Main Hutte Recipes

- [incremental deployment recipe](https://github.com/hutte-recipes/cicd-incremental-deployment)
- [salesforce code analyzer recipe](https://github.com/hutte-recipes/cicd-sf-code-analyzer)
- [sfdmu recipe](https://github.com/hutte-recipes/hutte-sfdmu) (including custom button)

## VSCode Presets

- VSCode pre-build settings for editor, PMD and prettier
- VSCode set of recommended extension for Salesforce development

## Code Quality Tools Configuration

- Prettier baseline configuration
- PMD baseline configuration
- ESLint baseline configuration
- Precommit Husky hook configured with prettier formating

Please check https://docs.hutte.io in order to learn more about setting up and using Hutte.