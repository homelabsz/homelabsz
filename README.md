<!-- BEGIN_TF_DOCS -->
<div align="center">

<a name="readme-top"></a>

<img alt="gif-header" src="https://github.com/lpsm-dev/lpsm-dev/blob/main/.github/assets/gif-header.gif" width="225"/>

<h2>Homelabsz</h2>

[![Semantic Release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)]()
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)]()

---

<img alt="gif-about" src="https://github.com/lpsm-dev/lpsm-dev/blob/main/.github/assets/gif-about.gif" width="225"/>

<p>Setup homelab project with Terraform + Kubernetes + Gitops</p>

<p>
  <a href="#-getting-started-">Getting Started</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-ideas-">Ideas</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-links-">Links</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-versioning-">Versioning</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-troubleshooting-">Troubleshooting</a>
</p>

</div>

## ➤ Getting Started <a name="#-getting-started"></a>

### Setup

To configure your system for the development of this project, follow the steps below:

- Install [asdf](https://asdf-vm.com/) to manage runtime dependencies.
- Install runtime dependencies.

```bash
cut -d' ' -f1 .tool-versions | xargs -I{} sh -c 'asdf plugin add "$1"' -- {}
asdf install
```

- Run task from the root of the repository to see available commands. We use task in place of make for this project. See [Taskfile.yml](Taskfile.yml) for more information.

## ➤ Ideas <a name="#-ideas"></a>

- Terraform to set up the network on Scaleway
- Terraform to set up DNS zone, DNS records, firewall rules and others in Cloudflare
- Terraform to create a Scaleway Kubernetes kapsule
- Terraform to configure IAM rules to integrate external secrets and secrets manager into Scaleway
- Terraform to create SSH keys used to access Scaleway instances
- Terraform to create a Scaleway Rancher Instance
- Terraform to create Rancher cluster, Rancher projects and Rancher namespaces
- Terraform to setup SSH keys for GitOps process in GitHub and GitLab
- Terraform to create a GitLab group structure + approval policies

## ➤ Links <a name="#-links"></a>

- https://forum.gitlab.com/t/deploy-keys-api-needs-admin-access/34814/6
- https://github.com/databus23/helm-diff
- https://clienttest.ssllabs.com
- https://engineering.deptagency.com/best-practices-for-terraform-aws-tags
- https://dnschecker.org/
- https://aws.amazon.com/blogs/apn/simplify-and-secure-terraform-workflows-on-aws-with-dynamic-provider-credentials/

## ➤ Versioning <a name="#-versioning"></a>

To check the change history, please access the [**CHANGELOG.md**](CHANGELOG.md) file.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ➤ Troubleshooting <a name="#-troubleshooting"></a>

If you have any problems, [open an issue in this project](https://github.com/homelabsz/homelabsz/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ➤ Show your support <a name="-show-your-support"></a>

<div align="center">

Give me a ⭐️ if this project helped you!

<img alt="gif-footer" src="https://github.com/lpsm-dev/lpsm-dev/blob/main/.github/assets/yoda.gif" width="225"/>

Made with 💜 by [me](https://github.com/lpsm-dev) 👋 inspired on [readme-md-generator](https://github.com/kefranabg/readme-md-generator)

</div>

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<!-- END_TF_DOCS -->
