let SystemdStatus = < started | reloaded | restarted | stopped >

let SystemdScope = < system | user | global >

let Systemd =
      { Type =
          { daemon_reexec : Optional Bool
          , daemon_reload : Optional Bool
          , enabled : Optional Bool
          , force : Optional Bool
          , masked : Optional Bool
          , name : Optional Text
          , no_block : Optional Bool
          , scope : Optional SystemdScope
          , state : Optional SystemdStatus
          , user : Optional Bool
          }
      , default =
          { daemon_reexec = None Bool
          , daemon_reload = None Bool
          , enabled = None Bool
          , force = None Bool
          , masked = None Bool
          , no_block = None Bool
          , name = None Text
          , scope = None SystemdScope
          , state = None SystemdStatus
          , user = None Bool
          }
      }

in  { Systemd = Systemd
    , SystemdStatus = SystemdStatus
    , SystemdScope = SystemdScope
    }
