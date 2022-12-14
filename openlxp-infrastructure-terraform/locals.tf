locals {
  my_pub_ip                       = "69.201.161.235/32" #include the /32 after IP address
  openlxpui_sg                    = "openlxpui_SG" # SG for XMS/XDS backend & front
  s3_bucket_name                  = "openlxp-ecc-var-bucket"
  ecs_instance_profile            = "ecc-ecs-instance-profile"
  vpc = {
    vpc_AZ                        = "us-east-1a"
  }
  xms = {
    app_container_name_xms        = "app"
    container_name_xms-ui         = "xms_ui"
    container_db_name             = "db"
    cluster_name                  = "openlxp-ecc_XMSCluster"
    cloudwatch_log_group_name_xms = "openlxp_ecc-xms"
    cloudwatch_application_xms    = "openlxp_ecc-xms"
    cloudwatch_log_group_name_ui  = "openlxp_ecc-xms_ui"
    cloudwatch_application_ui     = "openlxp_ecc-xms_ui"
    cloudwatch_db_log_group_name  = "openlxp_ecc-xms-db"
    cloudwatch_db_application     = "openlxp_ecc-xms-db"
    ec2_instance_name             = "openlxp-ecc_XMSContainerInstance"
    ec2_instance_type             = "t3.large"
    ec2_volume_size               = "60"
    ec2_volume_type               = "gp2"
    s3_xms_key_name               = "xms.env"
    s3_xmsui_key_name             = "xms_ui.env"
    subnet1_name                  = "xms_subnet1_useast1"
    subnet1_cidr_block            = "10.0.40.0/24"
    task_definition_name          = "openlxp-ecc_XMSTaskDefinition"
  }
  xds = {
    app_container_name_xds        = "app"
    container_name_xds-ui         = "xds_ui"
    container_db_name             = "db"
    cloudwatch_log_group_name_xds = "openlxp_ecc-xds"
    cloudwatch_application_xds    = "openlxp_ecc-xds"
    cloudwatch_log_group_name_ui  = "openlxp_ecc-xds_ui"
    cloudwatch_application_ui     = "openlxp_ecc-xds_ui"
    cloudwatch_db_log_group_name  = "openlxp_ecc-xds-db"
    cloudwatch_db_application     = "openlxp_ecc-xds-db"
    cluster_name                  = "openlxp-ecc_XDSCluster"
    ec2_instance_name             = "openlxp-ecc_XDSContainerInstance"
    ec2_instance_type             = "t3.large"
    ec2_volume_size               = "60"
    ec2_volume_type               = "gp2"
    s3_xds_key_name               = "xds.env"
    s3_xdsui_key_name             = "xds_ui.env"
    subnet1_name                  = "xds_subnet1_useast1"
    subnet1_cidr_block            = "10.0.46.0/24"
    task_definition_name          = "openlxp-ecc_XDSTaskDefinition"
  }
  xis = {
    app_container_name            = "app_xis"
    container_db_name             = "db_xis"
    cloudwatch_log_group_name     = "openlxp_ecc-xis"
    cloudwatch_application        = "openlxp_ecc-xis"
    cloudwatch_db_log_group_name  = "openlxp_ecc-xis-db"
    cloudwatch_db_application     = "openlxp_ecc-xis-db"
    cluster_name                  = "openlxp-ecc_XISCluster"
    ec2_instance_name             = "openlxp-ecc_XISContainerInstance"
    ec2_instance_type             = "t2.large"
    ec2_volume_size               = "60"
    ec2_volume_type               = "gp2"
    s3_key_name                   = "xis.env"
    db_host_name                  = "db-xss"
    subnet1_name                  = "xis_subnet1_useast1"
    subnet1_cidr_block            = "10.0.2.0/24"
    sg_name                       = "openlxp_xis_SG"
    task_definition_name          = "openlxp-ecc_XISTaskDefinition"
  }
  xss = {
    app_container_name            = "openlxp-xss"
    container_db_name             = "openlxp_xss_db"
    cloudwatch_log_group_name     = "openlxp_ecc-xss"
    cloudwatch_application        = "openlxp_ecc-xss"
    cloudwatch_db_log_group_name  = "openlxp_ecc-xss-db"
    cloudwatch_db_application     = "openlxp_ecc-xss-db"
    cluster_name                  = "openlxp-ecc_XSSCluster"
    ec2_instance_name             = "openlxp-ecc_XSSContainerInstance"
    ec2_instance_type             = "t2.medium"
    ec2_volume_size               = "50"
    ec2_volume_type               = "gp2"
    db_host_name                  = "db-xss"
    s3_key_name                   = "xss.env"
    subnet1_name                  = "xss_subnet1_useast1"
    subnet1_cidr_block            = "10.0.6.0/24"
    sg_name                       = "openlxp_xss_SG"
    task_definition_name          = "openlxp-ecc_XSSTaskDefinition"
  }
  xse = {
    es1_container_name            = "es01"
    es2_container_name            = "es02"
    es3_container_name            = "es03"
    kib_container_name            = "kib01"
    cloudwatch_log_group_name     = "openlxp_ecc-xse"
    cloudwatch_application        = "openlxp_ecc-xse"
    cluster_name                  = "openlxp-ecc_XSECluster"
    ec2_instance_name             = "openlxp-ecc_XSEContainerInstance"
    ec2_instance_type             = "t2.xlarge"
    ec2_volume_size               = "200"
    ec2_volume_type               = "gp2"
    subnet1_name                  = "xse_subnet1_useast1"
    subnet1_cidr_block            = "10.0.56.0/24"
    sg_name                       = "openlxp_xse_SG"
    task_definition_name          = "openlxp-ecc_XSETaskDefinition"
  }
}