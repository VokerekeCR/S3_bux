terraform {
  backend "s3" {
    bucket = "victor-talent-academy-686520628199-tfstates-victor"
    key    = "sprint1/week2/training-terraform/terraform.tfstates"
  }
}