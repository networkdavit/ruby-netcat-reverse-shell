# Reverse Shell Script

This is a simple reverse shell script written in Ruby. The script establishes a connection from the target machine to an attacker's machine, allowing the attacker to execute commands on the target machine remotely.

## Usage

1. **Install Ruby**: Ensure that Ruby is installed on your system. You can download it from [ruby-lang.org](https://www.ruby-lang.org/en/downloads/).

2. **Configure IP and Port**: Modify the `RHOST` and `PORT` variables in the script to match the IP address and port number of the attacker's machine. This is necessary for establishing the reverse connection.

    ```ruby
    RHOST = "attacker_ip"  # Replace "attacker_ip" with the attacker's IP address
    PORT = "attacker_port" # Replace "attacker_port" with the attacker's port number
    ```

3. **Run the Script**: Execute the script on the target machine. This can be done using the following command:

    ```sh
    ruby reverse_shell.rb
    ```

## Important Notice

This script is intended for educational purposes only. Unauthorized use of this script to gain access to computer systems is illegal and unethical. Always obtain proper authorization before testing or using this script on any network or system.
