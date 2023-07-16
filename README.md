<h1 align="center">
  Block Ports with UFW Firewall Script
</h1>

<p align="center">
  <img src="https://img.shields.io/github/license/your-username/block-ports-script">
  <img src="https://img.shields.io/github/languages/top/your-username/block-ports-script">
</p>

<p align="center">
  This script is designed to block a list of "bad" ports using the UFW firewall. The list of ports consists of services that are usually not open to the public and may require authentication. By blocking these ports, you can prevent incoming connection attempts from Bitcoin nodes or other potential malicious actors.
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

chmod +x block_ports.sh

🚦 Execute the script with administrative privileges:

bash

    sudo ./block_ports.sh

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
