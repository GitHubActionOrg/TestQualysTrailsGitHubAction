resource "aws_s3_bucket" "demo-bucket" {
  acl    = "private"
  bucket = "demo-bucket-20211115"
  policy = jsonencode(
    {
      "Version" : "2012-10-17",
      "Statement" : [
      {
          "Sid" : "AddCannedAclyes",
          "Effect" : "Allow",
          "Principal" : { "AWS" : ["184801150141"] },
          "Action" : ["*"],
          "Resource" : "arn:aws:s3:::demo-bucket-20211115/*",
        }
      ]
    }
  )
} 
