resource "aws_route53_zone" "yngmin_com" {
  name = "yngmin.com."
}

resource "aws_route53_record" "ns_dev_yngmin_com" {
  zone_id = aws_route53_zone.yngmin_com.zone_id
  name    = "dev"
  type    = "NS"
  ttl     = "300"
  records = [
    "ns-1821.awsdns-35.co.uk",
    "ns-1115.awsdns-11.org",
    "ns-725.awsdns-26.net",
    "ns-26.awsdns-03.com"
  ]
}

resource "aws_route53_record" "ns_stage_yngmin_com" {
  zone_id = aws_route53_zone.yngmin_com.zone_id
  name    = "stage"
  type    = "NS"
  ttl     = "300"
  records = [
    "ns-423.awsdns-52.com",
    "ns-1711.awsdns-21.co.uk",
    "ns-858.awsdns-43.net",
    "ns-1493.awsdns-58.org"
  ]
}