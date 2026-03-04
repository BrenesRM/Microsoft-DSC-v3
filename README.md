# Microsoft DSC v3 Exploration Project

Welcome to the Microsoft Configuration Desired State Configuration (DSC) v3 exploration project. This project is designed to help you understand the latest iteration of DSC, which is cross-platform, faster, and more flexible than ever.

## What is Microsoft DSC v3?

Microsoft DSC v3 is a cross-platform tool that allows you to describe the desired state of your system using JSON, Bicep, or YAML. Unlike previous versions, it doesn't require a complex setup (like the Local Configuration Manager or WMI) and can manage resources across Windows, Linux, and macOS.

### Key Features
- **Cross-Platform**: Works on Windows, Linux, and macOS.
- **Modern Configuration Formats**: Supports YAML, JSON, and Bicep.
- **No Dependencies**: Can be run as a standalone executable.
- **Resource Extensibility**: Easily integrate with existing scripts or tools.

## Project Structure

- `README.md`: This file, providing an overview of the project.
- `docs/installation_guide.md`: Steps to get `dsc` running on your system.
- `docs/step_by_step.md`: A guided walkthrough for your first configuration.
- `scenarios/osinfo.dsc.yaml`: A basic configuration to retrieve system info.
- `scenarios/mock_scenario.dsc.yaml`: A mock scenario for managing file/folder state.
- `salt/dsc_baseline.sls`: SaltStack state file for baseline management.
- `jea/DSCv3.psrc`: JEA Role Capability file.
- `jea/DSCv3Session.pssc`: JEA Session Configuration file.

## Advanced: Baseline Management with SaltStack


## Advanced: Baseline Management with SaltStack

You can use SaltStack to orchestrate the deployment of your DSC v3 configurations at scale. See the [SaltStack Integration Guide](docs/saltstack_integration.md) and the example [Salt State](salt/dsc_baseline.sls) for more details.


## Getting Started

1.  Follow the [Installation Guide](docs/installation_guide.md) to install `dsc`.
2.  Follow the [Step-by-Step Procedure](docs/step_by_step.md) to run your first configuration.
3.  Explore the `scenarios` folder for more examples.

## Security: Just-Enough-Administration (JEA)

For secure environments, you can restrict access to DSC v3 using JEA. This ensures that users only have the permissions necessary to apply configurations. See the [JEA Implementation Guide](docs/jea_implementation.md) for setup instructions.

---
*Based on the DSCC Community blog post: [What is Microsoft DSC v3](https://dsccommunity.org/blog/what-is-microsoft-dscv3/)*

