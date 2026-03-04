# Step-by-Step Procedure: Running Your First Configuration

This guide will walk you through running a basic DSC v3 configuration using a YAML file.

## Step 1: Create a Configuration File

Create a file named `osinfo.dsc.yaml` with the following content:

```yaml
$schema: https://aka.ms/dsc/schemas/v3/bundled/config/document.json
resources:
  - name: os
    type: Microsoft/OSInfo
    properties:
      family: Windows
```

## Step 2: Get the Current State

Run the following command in your terminal to retrieve the current state of the machine as defined in the configuration:

```bash
dsc config get --file osinfo.dsc.yaml
```

## Step 3: Understand the Output

DSC will return a JSON object containing information about your operating system, such as:
- OS Version
- Architecture
- OS Family

## Step 4: Test and Apply (Preview)

While `get` retrieves the current state, `test` checks if the current state matches the desired state, and `set` applies the changes.

To test your configuration:
```bash
dsc config test --file osinfo.dsc.yaml
```

To apply (ensure) the state:
```bash
dsc config set --file osinfo.dsc.yaml
```

*Note: For `Microsoft/OSInfo`, `set` doesn't change anything as it's a read-only resource for information gathering.*
