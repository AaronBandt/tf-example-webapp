# tf-example-webapp
Example terraform project.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.80.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.80.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.web_server](https://registry.terraform.io/providers/hashicorp/aws/5.80.0/docs/resources/instance) | resource |
| [aws_lb.web_lb](https://registry.terraform.io/providers/hashicorp/aws/5.80.0/docs/resources/lb) | resource |
| [aws_lb_listener.http](https://registry.terraform.io/providers/hashicorp/aws/5.80.0/docs/resources/lb_listener) | resource |
| [aws_lb_target_group.web_tg](https://registry.terraform.io/providers/hashicorp/aws/5.80.0/docs/resources/lb_target_group) | resource |
| [aws_lb_target_group_attachment.web_tg_attachment](https://registry.terraform.io/providers/hashicorp/aws/5.80.0/docs/resources/lb_target_group_attachment) | resource |
| [aws_security_group.alb_sg](https://registry.terraform.io/providers/hashicorp/aws/5.80.0/docs/resources/security_group) | resource |
| [aws_security_group.ec2_sg](https://registry.terraform.io/providers/hashicorp/aws/5.80.0/docs/resources/security_group) | resource |
| [aws_subnet.main](https://registry.terraform.io/providers/hashicorp/aws/5.80.0/docs/data-sources/subnet) | data source |
| [aws_subnets.main](https://registry.terraform.io/providers/hashicorp/aws/5.80.0/docs/data-sources/subnets) | data source |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/5.80.0/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | The id of the AMI to use | `string` | `"ami-0453ec754f44f9a4a"` | no |
| <a name="input_use1a_subnet_id"></a> [use1a\_subnet\_id](#input\_use1a\_subnet\_id) | n/a | `string` | `"subnet-0e4d4a0c3249a15cf"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The VPC id | `string` | `"vpc-043cd5089cf16bd4e"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lb_hostname"></a> [lb\_hostname](#output\_lb\_hostname) | The LB DNS name. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
