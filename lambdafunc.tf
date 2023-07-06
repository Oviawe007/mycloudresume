# resource "aws_iam_role" "lambda_exec_role" {
#   name = "lambda-exec-role"

#   assume_role_policy = <<EOF
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Action": "sts:AssumeRole",
#       "Principal": {
#         "Service": "lambda.amazonaws.com"
#       },
#       "Effect": "Allow",
#       "Sid": ""
#     }
#   ]
# }
# EOF
# }

# resource "aws_lambda_function" "visitor_counter" {
#   filename         = "/Users/efosaoviawe/desktop/projects/CV/resume/server.js.zip"  # Replace with the local path to server.js
#   function_name    = "visitor-counter"
#   role             = aws_iam_role.lambda_exec_role.arn
#   handler          = "server.handler"
#   runtime          = "nodejs14.x"
#   source_code_hash = filebase64sha256("/Users/efosaoviawe/desktop/projects/CV/resume/server.js.zip")  # Replace with the local path to server.js
# }
