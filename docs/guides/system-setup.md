---
title: System Setup
permalink: /system-setup/
---

## Follow the following steps

### Step 1: Create Forks

Create Forks of the following repos

| Repo # | Repository                                     | Description                                |
| :----: | :--------------------------------------------- | :----------------------------------------- |
|   1    | [shared-components-dev][1]{:target="\_blank"}  | This is the development tools & scripts    |
|   2    | [shared-node-components][2]{:target="\_blank"} | This contains the `node` shared components |
|   3    | [shared-ui-components][3]{:target="\_blank"}   | This contains the `ui` shared components   |

### Step 2: Workspace Folder Structure

Create the following workspace folder structure with the forked repos

```
workspace/ # can be named anything
├── shared-components-dev/ # cloned fork of repo #1
│   └── ...
├── shared-node-components/ # cloned fork of repo #2
│   └── ...
└── shared-ui-components/ # cloned fork of repo #3
    └── ...
```

### Step 3: Initialize Repo

Initialize repos [#2][2] & [#3][3] by running the following command in the respective sub-directives

```shell
bit install
```

### Step 4: Start Dev servers

Navigate to subdirectory of repo [#1][1] and run the following command

```shell
docker compose up -d
```

The server(s) will open in the following ports

| Sl. No. | Application                   | Port                |   Localhost Access Link(s)   |
| :-----: | :---------------------------- | :------------------ | :--------------------------: |
|    1    | Bit Server of Node Components | `3001` & `3301`[^1] | [Link][4]{:target="\_blank"} |
|    2    | Bit Server of UI Components   | `3000` & `3300`[^1] | [Link][5]{:target="\_blank"} |

[1]: https://github.com/CorpDK/shared-components-dev
[2]: https://github.com/CorpDK/shared-node-components
[3]: https://github.com/CorpDK/shared-ui-components
[4]: http://localhost:3001/
[5]: http://localhost:3000/

[^1]: These ports are used internally not to be accessed directly.
