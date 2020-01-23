let Perms =
      { Type =
          { owner : Optional Text, group : Optional Text, mode : Optional Text }
      , default = { owner = None Text, group = None Text, mode = None Text }
      }

in  Perms
