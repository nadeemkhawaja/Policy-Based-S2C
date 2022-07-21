module "aws_transit" {
  source  = "terraform-aviatrix-modules/mc-transit/aviatrix"
  version = "2.1.1"

  cloud         = "aws"
  region        = "us-east-1"
  name          = "AVX-Transit"
  cidr          = "10.0.0.0/22"
  account       = "AWS"
  gw_name       = "AVX-Transit"
  instance_size = "t2.micro"
}

module "aws_s2c" {
  source  = "terraform-aviatrix-modules/mc-spoke/aviatrix"
  version = "1.2.1"

  cloud                            = "aws"
  name                             = "AVX-S2C-Spoke"
  cidr                             = "10.0.4.0/22"
  region                           = "us-east-1"
  account                          = "AWS"
  transit_gw                       = "AVX-Transit"
  included_advertised_spoke_routes = "100.168.100.0/24, 10.0.4.0/22"
  instance_size                    = "t2.micro"

}

module "aws_app" {
  source  = "terraform-aviatrix-modules/mc-spoke/aviatrix"
  version = "1.2.1"

  cloud         = "aws"
  name          = "AVX-APP1-Spoke"
  cidr          = "10.11.12.0/24"
  region        = "us-east-1"
  account       = "AWS"
  transit_gw    = "AVX-Transit"
  instance_size = "t2.micro"


}

module "aws_gw_module" {
  source  = "terraform-aviatrix-modules/mc-gateway/aviatrix"
  version = "1.0.0"

  cloud            = "aws"
  name             = "AVX-S2C-GW1"
  region           = "us-east-1"
  use_existing_vpc = true
  vpc_id           = module.aws_s2c.vpc.vpc_id
  gw_subnet        = "10.0.4.32/28"
  hagw_subnet      = "10.0.4.48/28"
  account          = "AWS"
  enable_ha        = true
  instance_size    = "t2.micro"

}
