policy "gcp-cis-6.1-databases-cloud-sql-databases-instance-requires-all-incoming-connections-to-use-ssl" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/databases/gcp-cis-6.1-databases-cloud-sql-databases-instance-requires-all-incoming-connections-to-use-ssl/gcp-cis-6.1-databases-cloud-sql-databases-instance-requires-all-incoming-connections-to-use-ssl.sentinel"
    enforcement_level = "advisory"
    
policy "gcp-cis-6.2-databases-cloud-sql-databases-instances-are-not-open-to-the-world" {
    source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/gcp/databases/gcp-cis-6.2-databases-cloud-sql-databases-instances-are-not-open-to-the-world/gcp-cis-6.2-databases-cloud-sql-databases-instances-are-not-open-to-the-world.sentinel"
    enforcement_level = "advisory"
}
