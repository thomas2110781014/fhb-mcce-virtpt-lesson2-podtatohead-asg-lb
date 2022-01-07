module "podtatohead-1" {
  source = "./modules/podtatohead"
  podtato_name = "first"
  hats_version = "v3"
  left_arm_version = "v2"
  left_leg_version = "v1"
  podtato_version = "v0.1.0"
  right_arm_version = "v4"
  right_leg_version = "v1"
}

module "podtatohead-2" {
  source = "./modules/podtatohead"
  podtato_name = "second"
  hats_version = "v1"
  left_arm_version = "v3"
  left_leg_version = "v2"
  podtato_version = "v0.1.0"
  right_arm_version = "v2"
  right_leg_version = "v1"
}

output "first-url" {
  value = module.podtatohead-1.podtato-url
}

output "second-url" {
  value = module.podtatohead-2.podtato-url
}
