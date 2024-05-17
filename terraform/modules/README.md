<!-- BEGIN_DOCS -->

<div align="center">

<a name="readme-top"></a>

<h1>Terraform Modules</h1>

</div>

[[_TOC_]]

# Overview

A Terraform Module is a container for multiple resources to be used together. It's a way to package and reuse resource configurations with Terraform.

>
> [!IMPORTANT]
> 
> A well-designed module should facilitate the abstraction of a architectural concept, constructed from the resources offered by providers. Overusing modules can impede the comprehension and maintenance of the overall Terraform configuration. Therefore, it is advisable to exercise moderation in their use.
>

>
> [!CAUTION]
> **Read the GUIDELINES before you start developing a new module.**
>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# Modules

These are our Terraform modules:

- [terraform-aws-backend](./terraform-aws-backend/) - A Terraform module to set up remote state management with S3 backend for your account.
- [terraform-labels](./terraform-labels/) - A Terraform module designed to define a consistent naming convention.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# Exploring

## Benefits

Using Terraform modules brings several benefits to your infrastructure deployment process:

- **Reusability**: Modules allow you to organize infrastructure resources and configurations into containers that you can reuse across projects and environments. This reuse saves effort and significantly reduces errors.
- **Abstraction**: Modules simplify resource creation and configuration processes for Terraform configuration files, making them more concise and understandable.
- **Encapsulation**: Modules isolate resources and their dependencies, making it easier for you to manage or modify individual parts of your infrastructure without affecting others or compromising the modularity of your codebase. This improves its modularity.
- **Versioning**: Terraform modules can be versioned, making it easier to track changes and update dependencies in an orderly fashion. This ensures that changes made do not cause unintended problems in your infrastructure.
- **Collaboration**: Modules allow your team and the wider community to work more collaboratively by sharing them via the Terraform Registry or private module repositories - promoting best practices and standardizing infrastructure configurations.

## Structure

Let us examine the structure of a typical Terraform module.

- **Module Directory**: A module is organized in a directory with a specific structure. This directory should contain at least one .tf file that defines the module's resources.
- **Input Variables**: Modules often define input variables that allow customization of resource configurations. These variables are declared in the module and can be set when using the module.
- **Output Values**: Modules can also specify output values that are calculated by the module and can be used by the calling configuration. Outputs allow you to retrieve information from a module, such as IP addresses or resource IDs.
- **Resource Definitions**: The core of a module is its resource definitions. These define the infrastructure resources you want to create, such as virtual machines, networks, or databases.
- **Variable Values**: When utilizing a module, you provide values to its input variables to customize the resource configurations. These values can be hard-coded or derived from other sources.

Each Terraform project has the following structure:

- **examples** - Folder containing an example of how to use the developed module.
- **_datas.tf** - File containing all data types defined in Terraform.
- **_locals.tf** - File containing all locals defined in Terraform.
- **_outputs.tf** - File containing all outputs of the module.
- **_required.tf** - File that defines the versions of Terraform and the providers.
- **_variables.tf** - File containing all variables used in the module.
- **README.md** - File documenting the module.

## Types

***Root Modules***

It's the primary module in any Terraform configuration and the starting point for Terraform to manage infrastructure. Every Terraform configuration has at least one root module, which contains the resources defined in the `.tf` files. This configuration is what we deploy and maintain as the state of Terraform. Terraform operates in the context of a single root module, which can call other modules to reuse resource configurations. The complete configuration consists of the root module and its tree of child modules.

***Child Modules***

A Terraform module (usually the root module of a configuration) can call other modules to include their resources into the configuration. A module that has been called by another module is often referred to as a child module.

Child modules can be called multiple times within the same configuration, and multiple configurations can use the same child module.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# Guidelines

To create and maintain these Terraform modules effectively, follow these guidelines:

- In every module, include a `README.md` file in Markdown format. In the `README.md` file, include basic documentation about the module.
- Place examples in an `examples/` folder, with a separate subdirectory for each example. For each example, include a detailed `README.md` file.
- Create logical groupings of resources with their own files and descriptive names, such as `kubernetes.tf`, `networking.tf` or `instances.tf`.
  - Avoid giving every resource its own file. Group resources by their shared purpose.
- In the module's root directory, include only Terraform (`*.tf`) and repository metadata files (such as `README.md` and `CHANGELOG.md`).
- Follow the naming conventions defined in this documentation.
- Declare all variables in a `_variables.tf` file.
- Variables must have descriptions and types. When appropriate, provide default values.
- Organize all outputs in an `_outputs.tf` file.

## Principals

When developing these modules, try to follow these principles:

- Follow the DRY principle (Don't Repeat Yourself);
- Avoid duplicating;
- Make it easy to maintain the code;

## Naming Conventional

**Module Folders**

Naming convention for the folders of the created modules:

- Always use the `terraform` prefix.
- Use the `-` delimiter.
- Avoid long names.

Ex:

- `terraform-eks`
- `terraform-rds`
- `terraform-rancher`

**Terraform**

Naming convention for what is being worked on in the Terraform code layer:

- Use the `_` delimiter for resource types, data source types, and other predefined values.
- To simplify references to a resource that is the only one of its kind (for example, a single load balancer for an entire module), name the resource `main`.
- Make resource names singular.
- Don't repeat the resource type in the resource name.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

# References

If you have any reference links that you think are relevant to this documentation, please post them here:

- [Hashicorp Terraform Modules](https://developer.hashicorp.com/terraform/language/modules)

<!-- END_DOCS -->
