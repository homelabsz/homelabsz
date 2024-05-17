<!-- BEGIN_DOCS -->
<div align="center">

<a name="readme-top"></a>

<img alt="gif-header" src="https://github.com/lpsm-dev/lpsm-dev/blob/main/.github/assets/gif-header.gif" width="225"/>

<h1>Homelabsz</h1>

[![Semantic Release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://semantic-release.gitbook.io/semantic-release/usage/configuration)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](https://www.conventionalcommits.org/en/v1.0.0/)
[![Built with Devbox](https://jetpack.io/img/devbox/shield_galaxy.svg)](https://jetpack.io/devbox/docs/contributor-quickstart/)

<img alt="gif-about" src="https://github.com/lpsm-dev/lpsm-dev/blob/main/.github/assets/gif-about.gif" width="225"/>

<p>Setup homelab project with Terraform + Kubernetes + Gitops</p>

<p>
  <a href="#-getting-started-">Getting Started</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-tools-and-patterns-">Tools and Patterns</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-layers-">Layers</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-references-">References</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-versioning-">Versioning</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-troubleshooting-">Troubleshooting</a>
</p>

</div>

# ➤ Getting Started <a name="-show-your-support"></a>

To start developing this project, you need to set up your system properly. Therefore, follow these steps:

## Devbox

Devbox is a command-line tool that lets you easily create isolated shells for development. You start by defining the list of packages required for your project, and Devbox creates an isolated, reproducible environment with those packages installed.

>>>
🚨 Warning

Use this option if you don't want to install the tools at system level.
>>>

Follow these steps to configure your environment:

- Install [devbox](https://www.jetpack.io/devbox/docs/installing_devbox/).

```bash
curl -fsSL https://get.jetpack.io/devbox | bash
```

- Execute the following command to generate the temporary environment:

```bash
devbox shell
```

If you need more details about this configuration, check the [devbox.json](devbox.json) file. This setting is a global setting that we use. If you want to customize it, feel free.

## Direnv

Direnv is a powerful tool for managing environment variables and securely handling sensitive information such as API keys or credentials within a `.env` file.

>>>
🚨 Warning

In the `.envrc` file we configure it to load data from a `.env` file. Therefore, when you define your `.env`, `direnv` will load the variables from `.env` into your shell.
>>>

Follow these steps to configure your environment:

- Go to the [direnv](https://direnv.net/docs/installation.html) documentation and follow the instructions to install it.
- After installation, create an `.env` file in the root of your project.
- By default, `direnv` blocks itself from loading the contents of the `.envrc` file into your session as a security precaution when you are creating `.envrc` for the first time or whenever you modify the contents of the `.envrc` file. Run the following command to solve it.

```bash
direnv allow
```

By following these steps, you can utilize `direnv` to manage sensitive information securely and ensure that your environment variables are loaded safely whenever you work on your project.

## Task

The `task` tool provides a convenient way to define and manage project-specific tasks, making it easier to automate common scripts and simplifying development workflows.

>>>
🚨 Warning

We will use `task` instead of `make` for this project.
>>>

Follow these steps to configure your environment:

- Make sure you have installed the `task` command following the `devbox` configuration steps.
- Run the `task` command from the root directory of the project to see all the available commands.

If you need more details about each task defined, check the [Taskfile.yaml] file.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# ➤ Tools and Patterns <a name="-show-your-support"></a>

Here is what we use in this project:

**Tools**

- [AWS CLI](https://docs.aws.amazon.com/cli/)
- [Devbox](https://www.jetify.com/devbox/docs/)
- [Direnv](https://github.com/direnv/direnv)
- [Excalidraw](https://github.com/excalidraw/excalidraw)
- [Gitleaks](https://github.com/gitleaks/gitleaks)
- [IaC](https://aws.amazon.com/what-is/iac/)
  - [Conftest](https://www.conftest.dev/)
  - [Infracost](https://github.com/infracost/infracost)
  - [Terragrunt](https://terragrunt.gruntwork.io/)
  - [TFLint](https://github.com/terraform-linters/tflint)
  - [Opentofu](https://opentofu.org/)
- [Precommit](https://pre-commit.com/)
- [Taskfile](https://taskfile.dev/pt-br/)
- [Yamllint](https://github.com/adrienverge/yamllint)

**Patterns**

- [Conventional Commits](https://www.conventionalcommits.org)
- [Semantic Versioning](https://semver.org/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# ➤ Layers <a name="-show-your-support"></a>

In this section, we discuss the structure and organization of our project into different layers, each representing a specific aspect. By dividing the system into layers, we can isolate responsibilities, facilitate maintenance, and encourage code reuse. Each layer is described in detail in the following subsections.

## 1 - Terraform Layer

One of the premises of this project is to build everything with IaC. So we will be working with Terraform, an Infrastructure as Code tool that lets you define both cloud and on-prem resources in human-readable configuration files that you can version, reuse, and share.

## 2 - Account Layer

## 3 - Network Layer

## 4 - DNS Layer

## 5 - EKS Layer

### Cluster Components

- ingress-nginx: Provides ingress cluster services.
- external-dns: Creates DNS entries in Cloud Provider's DNS service.
- cert-manager: Configured to create TLS certs for all ingress services automatically using LetsEncrypt.

## 6 - Rancher Layer

## 7 - GitOps Layer

## 8 - CI/CD Layer

## 9 - Security Layer

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# ➤ Ideas

Ideas to consider for this project:

- [] Terraform to configure the network in Scaleway
- [] Terraform to configure the DNS zone, DNS records, firewall rules and more in Cloudflare
- [] Terraform to create a Scaleway Kubernetes kapsule
- [] Terraform to configure IAM rules to integrate external secrets and secrets manager into Scaleway
- [] Terraform to create SSH keys used to access Scaleway instances
- [] Terraform to create a Scaleway Rancher instance
- [] Terraform to create Rancher clusters, Rancher projects and Rancher namespaces
- [] Terraform to configure SSH keys for the GitOps process on GitHub and GitLab
- [] Terraform to create a GitLab group structure + approval policies
- [] Terraform to integrate Rancher + GitHub Oauth

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# ➤ References <a name="-show-your-support"></a>

If you have any reference links that you think are relevant to this documentation, please post them here:

- https://forum.gitlab.com/t/deploy-keys-api-needs-admin-access/34814/6
- https://github.com/databus23/helm-diff
- https://clienttest.ssllabs.com
- https://engineering.deptagency.com/best-practices-for-terraform-aws-tags
- https://dnschecker.org/
- https://aws.amazon.com/blogs/apn/simplify-and-secure-terraform-workflows-on-aws-with-dynamic-provider-credentials/
- https://stackoverflow.com/questions/63346728/issuing-certificate-as-secret-does-not-exist
- https://cert-manager.io/docs/configuration/acme/
- https://dev.to/stack-labs/securing-the-connectivity-between-a-scaleway-kubernetes-kapsule-application-and-scaleway-rdb-database-4g7b
- https://github.com/kenfdev/rancher-scaleway/blob/master/rancherserver/main.tf
- https://www.youtube.com/watch?v=TQcKpe13QI8

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# ➤ Versioning <a name="-show-your-support"></a>

To check the change history, please access the [**CHANGELOG.md**](CHANGELOG.md) file.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# ➤ Troubleshooting <a name="-show-your-support"></a>

If you have any problems, [open an issue in this project](https://github.com/homelabsz/homelabsz/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# ➤ Show your support <a name="-show-your-support"></a>

<div align="center">

Give me a ⭐️ if this project helped you!

<br>

<img alt="gif-footer" src="https://github.com/lpsm-dev/lpsm-dev/blob/main/.github/assets/yoda.gif" width="225"/>

<br>
<br>

Made with 💜 by [me](https://github.com/lpsm-dev) 👋 inspired on [readme-md-generator](https://github.com/kefranabg/readme-md-generator)

<br>

Copyright © 2024 Homelabsz

</div>

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<!-- END_DOCS -->
