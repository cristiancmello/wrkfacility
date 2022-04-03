# wrkfacility

WSL2 Workspace. Without password, **straight to the point**.

## Supported Distros

- Ubuntu 20.04 LTS

## Download Published Images

### Ubuntu 20.04.4 LTS (Focal Fossa)

* [Ubuntu 20.04.4 LTS WSL2 Image](https://github.com/cristiancmello/wrkfacility/releases/download/v1.2.0/ubuntu2004.v1_2_0.tar.7z)

### Import Image

* Choose a local where your distro will be stored and [Download Distro's Image](#ubuntu-20044-lts-focal-fossa) to this folder.

* Extract `ubuntu2004.v1_0_0.tar.7z` to `ubuntu2004.v1_0_0.tar`

* Execute these scripts in your **Windows Command (CMD.exe)**

```bat
wsl --import Ubuntu-20.04 . ubuntu2004.v{x}_{y}_{z}.tar
wsl --shutdown
```

### Windows Terminal Profile (optional)

Customize your terminal profile to enable access to linux's home folder.

Example:
```json
{
  "commandline": "wsl.exe -d Ubuntu-20.04 --cd \"~\"",
  "guid": "{07b52e3e-de2c-5db4-bd2d-ba144ed6c273}",
  "hidden": false,
  "name": "Ubuntu-20.04",
  "source": "Windows.Terminal.Wsl",
  "startingDirectory": "%USERPROFILE%"
}
```

**NO PASSWORD REQUIRED TO AUTH WITH SUDO. DEVELOPMENT PURPOSE ONLY.**

### Export Image

```bat
wsl --export Ubuntu-20.04 ubuntu2004.v{x}_{y}_{z}.tar
```

## WSL2 Config file (Default)

* Enable:
  - Windows interop
  - Mount fstab

```conf
[automount]
enabled=true

# Sets the `/etc/fstab` file to be processed when a WSL distribution is launched.
mountFsTab = true

[user]
default=wrk

# Set whether WSL supports interop process like launching Windows apps and adding path variables. Setting these to false will block the launch of Windows processes and block adding $PATH environment variables.
[interop]
enabled = true
appendWindowsPath = true
```

#### Default User Info 

- User: wrk
- Password: wrk

### CHANGELOG 1.2.0

- zsh 5.8 (x86_64-ubuntu-linux-gnu)
  + plugins: zsh-syntax-highlighting, git, zsh-syntax-highlighting, zsh-autosuggestions
- oh-my-zsh
- powerlevel10k theme pre-config

### CHANGELOG 1.0.0

- User: wrk
- Password: wrk

- Ubuntu 20.04.3 LTS (Focal Fossa)
- Docker version 20.10.7, build e91ed57
- gcc version 9.3.0 (Ubuntu 9.3.0-17ubuntu1~20.04)
- GNU Make 4.2.1
- Python 3.8.10


