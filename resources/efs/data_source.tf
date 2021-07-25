data "aws_subnet_ids" "private" {
  vpc_id = "${var.vpc_id}"
  filter {
    name   = "tag:Accesstype"
    values = ["${var.Accesstype}"]
  }

  filter {
    name   = "tag:Environment"
    values = ["${var.Environment}"]
  }
  filter {
    name   = "tag:Project"
    values = ["${var.Project}"]
  }
}

data "aws_subnet" "private" {
  for_each = data.aws_subnet_ids.private.ids
  id       = each.value
}

data "aws_security_group" "hgw_perf_efs" {
  vpc_id = "${var.vpc_id}"
  filter {
    name   = "tag:Environment"
    values = ["${var.Environment}"]
  }
  filter {
    name   = "tag:Component"
    values = ["${var.Component}"]
  }
  filter {
    name   = "tag:Project"
    values = ["${var.Project}"]
  }
}
