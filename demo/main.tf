module "data_pipeline_user_activity_aggregation" {
  source = "../module/cloud-formation"
  input_file_s3_path = "s3://xyz/aggregate.py"
  output_s3_path = "s3://xyz/aggreegate/output/"
}

module "data_pipeline_abcmodule" {
  source = "../module/cloud-formation"
  input_file_s3_path = "s3://xyz/abc.py"
  output_s3_path = "s3://xyz/abcc/output/"
}
