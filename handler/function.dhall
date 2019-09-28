let ordinaryUser =
          \(user : ./Input.dhall)
      ->  let privateKey = "/home/${user}/.ssh/id_rsa"
          
          let publicKey = "${privateKey}.pub"
          
          in  { privateKey = privateKey, publicKey = publicKey, user = user }

in ordinaryUser
