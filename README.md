# SSHTunnel

a simple gem for creating SSH tunnels

## Installation

```rb
gem install ssh_tunnel
```

## Usage

```rb
require 'ssh_tunnel'

# Forward traffic on local port 13000 to remote machine https://hello.com on port 8080
pid = SSHTunnel.create(13000, 'https://hello.com', '8080')
```
