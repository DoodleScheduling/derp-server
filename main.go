package main

//this is just a dummy main in order to get tailscale.com as a dependency in go.mod
//having a declared dependency enables use to get renovate pull requests for new tailscale releases

import (
  _ "tailscale.com"
)

func main() {}
