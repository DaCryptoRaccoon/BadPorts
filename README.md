<h1 align="center">
  Block Ports with UFW Firewall Script
</h1>

<p align="center">
  <img src="https://img.shields.io/github/license/DaCryptoRaccoon/BadPorts">
  <img src="https://img.shields.io/github/languages/top/DaCryptoRaccoon/BadPorts">
</p>

<p align="center">
Introducing the "Block Ports with UFW Firewall" script! This powerful script is designed to protect your system by blocking a list of "bad" ports that are commonly targeted by malicious actors when Bitcoin Core opens outgoing P2P connections.

When Bitcoin Core establishes connections with other peers on the P2P network, it selects a peer by considering its address and port from a list of potential peers. However, this list is vulnerable to unchecked data gossiped over the network, which can include misleading or non-existent addresses and ports.

To mitigate potential risks, our script blocks these "bad" ports to ensure that connection attempts from Bitcoin nodes are prevented from reaching services that are unrelated to the Bitcoin network. These ports are typically associated with services that are not meant to be publicly accessible and often require authentication, making connection attempts to such services potentially malicious.

By running this script and leveraging the UFW firewall, you fortify your system's security. It automatically denies access to the specified "bad" ports, effectively reducing the chances of receiving unwanted connections and providing peace of mind to ultra-paranoid administrators.

With a comprehensive list of blocked ports, including commonly targeted services such as SSH (port 22), the script enhances your system's protection against potential threats. By focusing on blocking ports used by non-public services, the script minimizes the risk of unauthorized access while ensuring that connection attempts to public services that typically do not require authentication remain unaffected.

Implementing this script empowers you to proactively safeguard your system, aligning with the best practices of Bitcoin Core security measures. By blocking these ports, you significantly reduce the potential exposure to malicious connection attempts and maintain a more secure environment.

Take advantage of this script and fortify your system's defenses against potential threats by running it today. Shield your system from unauthorized access and enjoy enhanced security and peace of mind.

See : https://github.com/bitcoin/bitcoin/blob/master/doc/p2p-bad-ports.md

</p>

## Prerequisites

- UFW (Uncomplicated Firewall) should be installed on your system. If not, you can install it using the package manager of your Linux distribution.

## Usage

1. 🚀 Clone the repository to your local machine:

   ```bash
   git clone https://github.com/your-username/block-ports-script.git

    📂 Navigate to the project directory:

    bash

cd block-ports-script

⚙️ Make the script executable:

bash

chmod +x BlockPorts.sh

🚦 Execute the script with administrative privileges:

bash

    sudo ./BlockPorts.sh

    The script will enable UFW if it's not already enabled, block the specified ports, add comments labeling each blocked port, reload the UFW rules, and display the UFW status with the blocked ports.

List of Blocked Ports

The script blocks the following ports, which are commonly used by services that are usually not open to the public:
Port	Name
1	tcpmux
7	echo
9	discard
11	systat
13	daytime
...	...

    Note: The complete list of blocked ports can be found in the script file block_ports.sh.

License

This project is licensed under the MIT License.
<p align="center">
  Made with ❤️ DaCryptoRaccoon
</p>
```

Feel free to replace your-username with your actual GitHub username and add your name in the "Made with ❤️ by Your Name" section at the bottom. You can further customize the README by adding images, badges, or any other elements you prefer.
