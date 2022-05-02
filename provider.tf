# The following variable is used to configure the provider's authentication
# token. You don't need to provide a token on the command line to apply changes,
# though: using the remote backend, Terraform will execute remotely in Terraform
# Cloud where your token is already securely stored in your workspace!

provider "google" {
  credentials = file("C:\\Users\\rakesh.karthikeyan\\Documents\\Terraform\\cred\\zeta-feat-342908-d5781f5a61d9.json")

  project = "zeta-feat-342908"
  region  = "us-central1"
  zone    = "us-central1-c"
}
