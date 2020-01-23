-- Reference: https://docs.ansible.com/ansible/latest/modules/user_module.html
let UserState = < absent | present >

let PassUpdate = < always | on_create >

let User =
      { Type =
          { append : Optional Bool
          , authorization : Optional Text
          , comment : Optional Text
          , create_home : Optional Bool
          , expires : Optional Double
          , force : Optional Bool
          , generate_ssh_key : Optional Bool
          , group : Optional Text
          , groups : Optional (List Text)
          , hidden : Optional Text
          , home : Optional Text
          , local : Optional Bool
          , login_class : Optional Text
          , move_home : Optional Bool
          , name : Text
          , non_unique : Optional Bool
          , password : Optional Bool
          , password_lock : Optional Bool
          , profile : Optional Text
          , remove : Optional Bool
          , role : Optional Text
          , seuser : Optional Text
          , shell : Optional Text
          , skeleton : Optional Text
          , ssh_key_bits : Optional Natural
          , ssh_key_comment : Optional Text
          , ssh_key_file : Optional Text
          , ssh_key_passphrase : Optional Text
          , ssh_key_type : Optional Text
          , state : Optional UserState
          , system : Optional Bool
          , uid : Optional Natural
          , update_password : Optional PassUpdate
          }
      , default =
          { append = None Bool
          , authorization = None Text
          , comment = None Text
          , create_home = None Bool
          , expires = None Double
          , force = None Bool
          , generate_ssh_key = None Bool
          , group = None Text
          , groups = None (List Text)
          , hidden = None Text
          , home = None Text
          , local = None Bool
          , login_class = None Text
          , move_home = None Bool
          , non_unique = None Bool
          , password = None Bool
          , password_lock = None Bool
          , profile = None Text
          , remove = None Bool
          , role = None Text
          , seuser = None Text
          , shell = None Text
          , skeleton = None Text
          , ssh_key_bits = None Natural
          , ssh_key_comment = None Text
          , ssh_key_file = None Text
          , ssh_key_passphrase = None Text
          , ssh_key_type = None Text
          , state = None UserState
          , system = None Bool
          , uid = None Natural
          , update_password = None PassUpdate
          }
      }

in  { User = User, UserState = UserState, PassUpdate = PassUpdate }
