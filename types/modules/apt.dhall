-- Upstream reference: https://docs.ansible.com/ansible/latest/modules/apt_module.html

let AptState = < absent | build-dep | latest | present | fixed >

let UpgradeApt = < dist | full | no | safe | yes >

let Apt =
      { Type =
          { allow_unauthenticated : Optional Bool
          , autoclean : Optional Bool
          , autoremove : Optional Bool
          , cache_valid_time : Optional Natural
          , deb : Optional Text
          , default_release : Optional Text
          , dpkg_options : Optional Text
          , force : Optional Bool
          , force_apt_get : Optional Bool
          , install_recommends : Optional Bool
          , name : Optional (List Text)
          , only_upgrade : Optional Bool
          , policy_rc_d : Optional Integer
          , purge : Optional Bool
          , state : Optional AptState
          , update_cache : Optional Bool
          , upgrade : Optional UpgradeApt
          }
      , default =
          { allow_unauthenticated = None Bool
          , autoclean = None Bool
          , autoremove = None Bool
          , cache_valid_time = None Natural
          , deb = None Text
          , default_release = None Text
          , dpkg_options = None Text
          , force = None Bool
          , force_apt_get = None Bool
          , install_recommends = None Bool
          , name = None (List Text)
          , only_upgrade = None Bool
          , policy_rc_d = None Integer
          , purge = None Bool
          , state = None AptState
          , update_cache = None Bool
          , upgrade = None UpgradeApt
          }
      }

in  { Apt = Apt, AptState = AptState, UpgradeApt = UpgradeApt }
