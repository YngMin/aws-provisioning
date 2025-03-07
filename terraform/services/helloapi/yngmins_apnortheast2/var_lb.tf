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
          Name    = "helloapi-yngmind_apnortheast2-external-lb"
          app     = "helloapi"
          project = "helloapi"
          env     = "dev"
          stack   = "yngmind_apnortheast2"
        },
        yngminsapne2 = {
          Name    = "helloapi-yngmins_apnortheast2-external-lb"
          app     = "helloapi"
          project = "helloapi"
          env     = "stage"
          stack   = "yngmins_apnortheast2"
        }
      }
    }

    external_lb_tg = {
      tags = {
        yngmindapne2 = {
          Name    = "helloapi-yngmind_apnortheast2-external-tg"
          app     = "helloapi"
          project = "helloapi"
          env     = "dev"
          stack   = "yngmind_apnortheast2"
        },
        yngminsapne2 = {
          Name    = "helloapi-yngmins_apnortheast2-external-tg"
          app     = "helloapi"
          project = "helloapi"
          env     = "stage"
          stack   = "yngmins_apnortheast2"
        }
      }
    }

    internal_lb = {
      tags = {

        devartdapne2 = {
          Name    = "helloapi-devartd_apnortheast2-internal-lb"
          app     = "helloapi"
          project = "helloapi"
          env     = "dev"
          stack   = "devartd_apnortheast2"
        },

        devartsapne2 = {
          Name    = "helloapi-devarts_apnortheast2-internal-lb"
          app     = "helloapi"
          project = "helloapi"
          env     = "dev"
          stack   = "devarts_apnortheast2"
        }

        yngmindapne2 = {
          Name    = "helloapi-yngmind_apnortheast2-internal-lb"
          app     = "helloapi"
          project = "helloapi"
          env     = "dev"
          stack   = "yngmind_apnortheast2"
        }
        yngminsapne2 = {
          Name    = "helloapi-yngmins_apnortheast2-internal-lb"
          app     = "helloapi"
          project = "helloapi"
          env     = "stage"
          stack   = "yngmins_apnortheast2"
        }
      }
    }

    internal_lb_tg = {
      tags = {

        devartdapne2 = {
          Name    = "helloapi-devartd_apnortheast2-internal-tg"
          app     = "helloapi"
          project = "helloapi"
          env     = "dev"
          stack   = "devartd_apnortheast2"
        },

        devartsapne2 = {
          Name    = "helloapi-devarts_apnortheast2-internal-tg"
          app     = "helloapi"
          project = "helloapi"
          env     = "dev"
          stack   = "devarts_apnortheast2"
        },

        artdapne2 = {
          Name    = "helloapi-artd_apnortheast2-internal-tg"
          app     = "helloapi"
          project = "helloapi"
          env     = "dev"
          stack   = "artd_apnortheast2"
        },

        artpapne2 = {
          Name    = "helloapi-artp_apnortheast2-internal-tg"
          app     = "helloapi"
          project = "helloapi"
          env     = "prod"
          stack   = "artp_apnortheast2"
        },

        yngmindapne2 = {
          Name    = "helloapi-yngmind_apnortheast2-internal-tg"
          app     = "helloapi"
          project = "helloapi"
          env     = "dev"
          stack   = "yngmind_apnortheast2"
        },
        yngminsapne2 = {
          Name    = "helloapi-yngmins_apnortheast2-internal-tg"
          app     = "helloapi"
          project = "helloapi"
          env     = "stage"
          stack   = "yngmins_apnortheast2"
        }
      }
    }
  }
}
