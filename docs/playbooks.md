# Ansible Playbooks
> Automatic machine setup using Ansible playbooks (macOS only).

## Quick, Zero-Configuration Setup
Run the following command in your terminal:
```bash
pip3 install ansible && \
ansible-pull https://github.com/iDaN5x/dev-env.git setup-personal-machine.yml
```

## Customized Setup
1. Clone this repo using:
  ```bash
  git clone https://github.com/iDaN5x/dev-env.git
  ```
2. Create a playbook file (e.g. `setup-custom.yml`).
   Information about the different roles and variables can be found below.
3. Run your custom playbook using:
  ```bash
  ansible-playbook <playbook-file>
  ```

## Playbooks
* `setup-personal-machine.yml` - setups the development environment I use on my personal machine.
* `setup-sedg-machine.yml` - setups the development environment I used when I worked in SolarEdge.

## Roles
### Git
Setups Git for usage on the machine.

__Variables:__
| Name        | Type           | Description                       | Default |
|-------------|----------------|-----------------------------------|---------|
| git_aliases | dict[str, str] | Mapping of git aliases to declare | {}   |

### Shell
Setups a customized shell based on Zsh, OhMyZsh and Starship.

__Variables:__
| Name                                | Type           | Description                                                                | Default |
|-------------------------------------|----------------|----------------------------------------------------------------------------|---------|
| shell_enable_fingerprint            | bool           | Whether to allow using fingerprint instead of password for root elevation. | true    |
| shell_setup_zsh                     | bool           | Whether to enable ZSh                                                      | true    |
| shell_zsh_aliases                   | dict[str, str] | ZSh aliases to define                                                      | {}      |
| shell_use_ohmyzsh                   | bool           | Whether to enable OhMyZsh                                                  | true    |
| shell_ohmyzsh_update_frequency_days | Optional[int]  | OhMyZsh update frequency in days. If None then auto-update is disabled.    | 7       |
| shell_ohmyzsh_theme                 | str            | OhMyZsh theme to use. (Won't be used if Starship is enabled)               | amuse   |
| shell_ohmyzsh_plugins               | List           | List of OhMyZsh plugins to enable.                                         | []      |
| shell_ohmyzsh_plugins[*].name          | str            | Name of OhMyZsh plugin.                                                    |         |
| shell_ohmyzsh_plugins[*].formula       | Optional[str]  | OhMyZsh plugins' Homebrew formula to (Optionally) install.                 | None    |
| shell_use_starship                  | bool           | Whether to enable Starship shell.                                          | True    |
| shell_generate_configs              | bool           | Whether to generate shell configuration files. (.zshrc, .zprofile)         | True    |

### iTerm2
Setups and configures a customized iTerm2 installation.

__Variables:__
| Name                         | Type           | Description                                         | Default       |
|------------------------------|----------------|-----------------------------------------------------|---------------|
| iterm2_dynamic_profiles_file | str            | iTerm2 dynamic profiles file to use.                | Profiles.json |
| iterm2_default_profile       | str            | Name of default profile in the profiles file.       | Default       |
| iterm2_advanced_configs      | dict[str, str] | iTerm advanced configuration to be set (via plist). | {}            |

### Tools
Install both CLI tools and apps.

__Variables:__
| Name           | Type      | Description                                 | Default |
|----------------|-----------|---------------------------------------------|---------|
| tools_taps     | list[str] | List of Homebrew taps to register.          | []      |
| tools_formulas | list[str] | List of Homebrew formulas to install.       | []      |
| tools_casks    | list[str] | List of Homebrew casks to install.          | []      |
| tools_apps     | list[str] | List of AppStore apps to install using mas. | []      |

### Python
Setups Python development environment using PyEnv and Poetry.

__Variables:__
| Name                  | Type      | Description                                | Default            |
|-----------------------|-----------|--------------------------------------------|--------------------|
| python_versions       | list[str] | Python versions to install on the machine. | ["3.11"]           |
| python_global_version | str       | Python version to set as global.           | python_versions[0] |

### Java
Setups Java development environment using JEnv.

__Variables:__
| Name            | Type      | Description                                        | Default        |
|-----------------|-----------|----------------------------------------------------|----------------|
| java_jdks       | list[str] | JDK versions (formulas) to install on the machine. | ["openjdk@17"] |
| java_global_jdk | str       | JDK version to set as global.                      | java_jdks[0]   |

### NodeJs
Setups NodeJs development environment using NVM.

__Variables:__
| Name                  | Type      | Description                                                                     | Default            |
|-----------------------|-----------|---------------------------------------------------------------------------------|--------------------|
| nodejs_versions       | list[str] | NodeJs versions to install on the machine. Installs most recent LTS by default. | ["--lts"]          |
| nodejs_global_version | str       | NodeJs version to set as global.                                                | nodejs_versions[0] |

### Haskell
Setups Haskell development environment using ghc, cabal, stack and hls.

### Multipass
Setups multipass on the machine.

### MicroK8s
Setups MicroK8s environment locally using Micropass.

__Variables:__
| Name                       | Type                     | Description                          | Default |
|----------------------------|--------------------------|--------------------------------------|---------|
| microk8s_addons            | list                     | List of MicroK8s addons to enable    | []      |
| microk8s_addons[*].name    | str                      | Addon name                           |         |
| microk8s_addons[*].options | Optional[dict[str, str]] | Map of addon options.                | None    |
| microk8s_dashbaord_enabled | bool                     | Whether to enable K8s dashboard.     | true    |
| microk8s_export_kubeconfig | bool                     | Whether to export a KubeConfig file. | true    |
