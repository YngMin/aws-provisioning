variable "lb_variables" {
  default = {
    target_group_slow_start = {
      yngmindapne2 = 0
      yngminsapne2 = 0
    }

    target_group_deregistration_delay = {
      yngmindapne2 = 60
      yngminsapne2 = 60
    }

    external_lb = {
      tags = {
        yngmindapne2 = {
          Name    = "hello-yngmind_apnortheast2-external-lb"
          app     = "hello"
          project = "hello"
          env     = "dev"
          stack   = "yngmind_apnortheast2"
        },
        yngminsapne2 = {
          Name    = "hello-yngmins_apnortheast2-external-lb"
          app     = "hello"
          project = "hello"
          env     = "stage"
          stack   = "yngmins_apnortheast2"
        }
      }
    }

    external_lb_tg = {
      tags = {
        yngmindapne2 = {
          Name    = "hello-yngmind_apnortheast2-external-tg"
          app     = "hello"
          project = "hello"
          env     = "dev"
          stack   = "yngmind_apnortheast2"
        },
        yngminsapne2 = {
          Name    = "hello-yngmins_apnortheast2-external-tg"
          app     = "hello"
          project = "hello"
          env     = "stage"
          stack   = "yngmins_apnortheast2"
        }
      }
    }
  }
}
