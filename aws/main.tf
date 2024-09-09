module "lambda_function" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "iot_handler"
  description   = "Function to handle IoT events"
  handler       = "index.lambda_handler"
  runtime       = "python3.12" 

  source_path = [
    {
      path = "../../iot-handler"
      patterns = [
		"!.gitignore",
		"!requirements.txt",
		"!.env*",
		"!.git/.*",
		"!.venv/.*"
      ]
	  pip_requirements = true
	  pip_tmp_dir = "/tmp/pip"
    }
  ]

  environment_variables = {
    SUPABASE_URL = var.SUPABASE_URL
    SUPABASE_KEY = var.SUPABASE_KEY
  }

  create_package = true
  package_type = "Zip"

  tags = {
    Name = "iot_handler"
  }
}