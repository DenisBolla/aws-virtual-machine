module "network" {
  source = "./network"
}

module "vm" {
  source             = "./vm"
  subnet_id          = module.network.subnet_id
  security_group_id  = module.network.security_group_id
}
