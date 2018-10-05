provider "gocd" {
  baseurl = "${var.baseurl}"
}

resource "gocd_pipeline" "build" {
  name           = "${var.pipeline-name}"
  group          = "terraform-provider-gocd"
  label_template = "0.0.$${COUNT}"

  materials = [
    {
      type = "git"

      attributes {
        name = "terraform-with-gocd"
        url  = "https://af2e97f1cf2208929e480c3b3a28881d5c002c3e@github.com/Keshav-Rai001/terraform-with-gocd"
      }
    }
  ]
}
