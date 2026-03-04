# Salt State for Microsoft DSC v3 Baseline

# 1. Ensure the DSC configuration file is present
push_dsc_config:
  file.managed:
    - name: C:\temp\dsc_baseline.dsc.yaml
    - source: salt://dsc/files/mock_scenario.dsc.yaml
    - makedirs: True

# 2. Ensure dsc.exe is in the path (Assumes Method 1 or 2 from installation guide)
# This is a simplified check
check_dsc_installed:
  cmd.run:
    - name: dsc --version
    - shell: powershell

# 3. Apply the DSC Baseline
apply_dsc_baseline:
  cmd.run:
    - name: dsc config set --file C:\temp\dsc_baseline.dsc.yaml
    - shell: powershell
    - onchanges:
      - file: push_dsc_config
