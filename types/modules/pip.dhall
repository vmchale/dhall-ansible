-- Upstream reference: https://docs.ansible.com/ansible/latest/modules/pip_module.html
let PipState = < absent | forcereinstall | latest | present >

let Pip =
      { Type =
          { chdir : Optional Text
          , editable : Optional Bool
          , executable : Optional Text
          , extra_args : Optional Text
          , name : Optional (List Text)
          , requirements : Optional Text
          , state : Optional PipState
          , unmask : Optional Text
          , version : Optional Text
          , virtualenv : Optional Text
          , virtualenv_command : Optional Text
          , virtualenv_python : Optional Text
          , virtualenv_site_packages : Optional Text
          }
      , default =
          { chdir = None Text
          , editable = None Bool
          , executable = None Text
          , extra_args = None Text
          , name = None (List Text)
          , requirements = None Text
          , state = None PipState
          , unmask = None Text
          , version = None Text
          , virtualenv = None Text
          , virtualenv_command = None Text
          , virtualenv_python = None Text
          , virtualenv_site_packages = None Text
          }
      }

in  { Pip = Pip, PipState = PipState }
