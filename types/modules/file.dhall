-- Upstream documentation: https://docs.ansible.com/ansible/latest/modules/file_module.html

let selinux = ./common/selinux.dhall

let perms = ./common/perms.dhall

let FileState = < absent | directory | touch | hard | link | file >

let File =
      { Type =
            selinux.Type
          ⩓ perms.Type
          ⩓ { access_time : Optional Text
            , access_time_format : Optional Text
            , attributes : Optional Text
            , follow : Optional Bool
            , force : Optional Bool
            , modification_time : Optional Text
            , path : Text
            , recurse : Optional Bool
            , src : Optional Bool
            , state : Optional FileState
            , unsafe_writes : Optional Bool
            }
      , default =
            selinux.default
          ⫽ perms.default
          ⫽ { access_time = None Text
            , access_time_format = None Text
            , attributes = None Text
            , follow = None Bool
            , force = None Bool
            , modification_time = None Text
            , recurse = None Bool
            , src = None Bool
            , state = None FileState
            , unsafe_writes = None Bool
            }
      }

in  { File = File, FileState = FileState }
