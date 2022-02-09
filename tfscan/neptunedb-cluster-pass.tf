resource "aws_neptune_cluster" "neptunedb-cluster-pass" {
  cluster_identifier = "neptunedb-cluster-pass"
  storage_encrypted  = true #checkov CKV_AWS_44
  enable_cloudwatch_logs_exports = ["audit"] #checkov CKV_AWS_101
}

resource "aws_neptune_cluster_instance" "neptunedb-cluster-instance-pass" {
  cluster_identifier = aws_neptune_cluster.neptunedb-cluster-pass.id
  instance_class     = "db.r4.small"
  publicly_accessible = false #checkov CKV_AWS_102
}
