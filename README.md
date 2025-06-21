# Odoo

This is an Odoo development environment using Docker. It simplifies the process 
of initializing an Odoo project with pgAdmin.

## Features

- User is able to set specific environment variables : see *.env.example* file
- Provide a VS Code workspace folder : *odoo.code-workspace*
- Use the *workspace* folder to put all addons : organise it as you want
- Use `./clone_odoo.sh <version>` to clone specific Odoo version in the workspace folder
- Use `./dev.sh <odoo_args>` to run odoo [command line args](https://www.odoo.com/documentation/18.0/developer/reference/cli.html)

## Usage

If you need a specific version of Odoo, give the *ODOO_VERSION* you in the Dockerfile

Install Docker:
```
sudo apt install docker.io docker-compose
```

Give your user the Docker rights:
```
sudo usermod -aG docker $USER
```

Clone this repository:
```
git clone git@github.com:abdounasser202/just-for-fun
```

Checkout to odoo folder
```
cd odoo
```

Make sure you have the right to execute the clone_odoo.sh and dev.sh scripts with these commands 

If not :

```
chmod +x clone_odoo.sh
chmod +x dev.sh
```

You can run Odoo with the following command:
```
./dev.sh -d <database_name> -i <module_name>
```
