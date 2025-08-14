# k9s Plugins

This repository contains my custom-built and other existing k9s plugins (some of which also integrate with other tools) that improve my productivity, which I’d like to share with the community.
If you’d like to add your own plugin or suggest a tool that could be integrated with k9s plugins, feel free to open an issue so we can review it.

## Plugins

You can find the usage configuration for all plugins in the [`plugins.yaml`](./plugins.yaml) file, and the corresponding scripts are located in the [`/scripts`](./scripts) directory.

For detailed documentation on plugins that use external tools, please refer to their GitHub or documentation page, linked in the plugin’s description.

### List of plugins

- [certlens](#certlens)
- [LOOG](#loog)
- [Kubectl Applier](#kubectl-applier)  

### certlens

[certlens](https://github.com/codechamp1/certlens) is a terminal UI for inspecting Kubernetes TLS Secrets.

### LOOG

[LOOG](https://github.com/loog-project/loog/tree/main) is a small TUI program that records every change made to one or more Kubernetes resources and lets you browse those revisions.

### Kubectl Applier

This plugin uses the shell script [`k9s-kubectl-applier.sh`](./scripts/k9s-kubectl-applier.sh), and adds the ability to create or apply Kubernetes resources directly from k9s, a feature not available by default.
 Using a key binding, it opens your terminal’s default editor (or vim if none is set) to edit a temporary manifest file.
Once you save and exit, the manifest is applied with kubectl. If there are any errors in the manifest, k9s will display an error popup. This tool is ideal for quickly creating or updating resources without leaving the k9s interface.
