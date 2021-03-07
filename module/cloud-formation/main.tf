data "template_file" "data_pipeline_shell_activity_template" {
    template = "${file("${path.module}/cft_shellcommand_activity.json")}"
    vars = {
        input_file_s3_path        = var.input_file_s3_path
        output_s3_path            = var.output_s3_path
    }
}


resource "aws_cloudformation_stack" "data_pipeline_shell_activity_pipeline" {
    name     = var.ctf_name
    template_body = "${data.template_file.data_pipeline_shell_activity_template.rendered}"
}
