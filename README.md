[![Maintained](https://img.shields.io/badge/Maintained%20by-XOAP-success)](https://xoap.io)
[![Terraform](https://img.shields.io/badge/Terraform-%3E%3D1.1.6-blue)](https://terraform.io)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# Table of Contents

- [Introduction](#introduction)
- [Guidelines](#guidelines)
- [Requirements](#requirements)
- [Providers](#providers)
- [Modules](#modules)
- [Resources](#resources)
- [Inputs](#inputs)
- [Outputs](#outputs)

---

## Introduction

This is a template for Terraform modules.

It is part of our XOAP Automation Forces Open Source community library to give you a quick start into Infrastructure as Code deployments with Terraform.

We have a lot of Terraform modules that are Open Source and maintained by the XOAP staff.

Please check the links for more info, including usage information and full documentation:

- [XOAP Website](https://xoap.io)
- [XOAP Documentation](https://docs.xoap.io)
- [Twitter](https://twitter.com/xoap_io)
- [LinkedIn](https://www.linkedin.com/company/xoap_io)

---

## Guidelines

We are using the following guidelines to write code and make it easier for everyone to follow a destinctive guideline. Please check these links before starting to work on changes.

[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md)

Git Naming Conventions are an important part of the development process. They descrtibe how Branched, Commit Messages, Pull Requests and Tags should look like to make the easily understandebla for everybody in the development chain.

[Git Naming Conventions](https://namingconvention.org/git/)

he Conventional Commits specification is a lightweight convention on top of commit messages. It provides an easy set of rules for creating an explicit commit history; which makes it easier to write automated tools on top of.

[Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)

The better a Pull Request description is, the better a review can understand and decide on how to review the changes. This improves implementation speed and reduces communication between the requester and the reviewer resulting in much less overhead.

[Wiriting A Great Pull Request Description](https://www.pullrequest.com/blog/writing-a-great-pull-request-description/)

Versioning is a crucial part for Terraform Stacks and Modules. Without version tags you cannot clearly create a stable environment and be sure that your latest changes won't crash your production environment (sure it still can happen, but we are trying our best to implement everything that we can to reduce the risk)

[Semantic Versioning](https://semver.org)

Naming Conventions for Terraform resources must be used.

[Terraform Naming Conventions](https://www.terraform-best-practices.com/naming)

---

## Usage

### Installation

For the first ime using this template necessary tools need to be installed.
A script for PowerShell Core is provided under ./build/init.ps1

This script will install following dependencies:

- [pre-commit](https://github.com/pre-commit/pre-commit)
- [terraform-docs](https://github.com/terraform-docs/terraform-docs)
- [tflint](https://github.com/terraform-linters/tflint)
- [tfsec](https://github.com/aquasecurity/tfsec)
- [checkov](https://github.com/bridgecrewio/checkov)
- [terrascan](https://github.com/accurics/terrascan)
- [kics](https://github.com/Checkmarx/kics)

This script configures:

- global git template under ~/.git-template
- global pre-commit hooks for prepare-commit-msg and commit-msg under ~/.git-template/hooks
- github actions:
  - linting and checks for pull requests from dev to master/main
  - automatic tagging and release creation on pushes to master/main
  - dependabot updates

It currently supports the automated installation for macOS. Support for Windows and Linux will be available soon.

### Synchronisation

We provided a script under ./build/sync_template.ps1 to fetch the latest changes from this template repository.
Please be aware that this is mainly a copy operation which means all your current changes have to be committed first and after running the script you have to merge this changes into your codebase.

### Configuration

---

<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.1.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.8.0 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | >= 1.14.0 |
| <a name="requirement_mysql"></a> [mysql](#requirement\_mysql) | >=1.9.0-p8 |
| <a name="requirement_rancher2"></a> [rancher2](#requirement\_rancher2) | >= 1.23.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.8.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_directory_service_directory.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/directory_service_directory) | resource |
| [aws_vpc_dhcp_options.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_dhcp_options) | resource |
| [aws_vpc_dhcp_options_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_dhcp_options_association) | resource |
| [random_password.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | the domain name of the active directory service. | `any` | n/a | yes |
| <a name="input_edition"></a> [edition](#input\_edition) | the edition of the MicrosoftAD active directory service. Standard or Enterprise | `string` | `"Standard"` | no |
| <a name="input_short_name"></a> [short\_name](#input\_short\_name) | the short name of the active directory service. | `any` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | the subnet ids of the active directory service. | `list(string)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | the vpc id of the active directory service. | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_url"></a> [access\_url](#output\_access\_url) | n/a |
| <a name="output_dns_ip_addresses"></a> [dns\_ip\_addresses](#output\_dns\_ip\_addresses) | n/a |
| <a name="output_dns_name"></a> [dns\_name](#output\_dns\_name) | n/a |
| <a name="output_domain_name"></a> [domain\_name](#output\_domain\_name) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_password"></a> [password](#output\_password) | n/a |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
<!-- markdownlint-disable -->
<!-- prettier-ignore-end -->
