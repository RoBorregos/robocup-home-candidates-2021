# Robocup@Home - Roborregos Candidates 2021

## Developers & Contact Info
| Nombre | Correo | Github |
| ---- | ----- | ------ |
| José Cisneros | [A01283070@itesm.mx](mailto:A01283070@itesm.mx) | [@Josecisneros001](https://github.com/Josecisneros001) |
| Aurora Tijerina | [A01196690@itesm.mx](mailto:A01196690@itesm.mx) | [@AuroTB](https://github.com/AuroTB) |

## Requirements

* Ubuntu System
* Docker
    * Follow up the tutorial according to your SO:
    https://docs.docker.com/get-docker/ 
* python3
    * Follow up the tutorial according to your SO:
    https://www.python.org/downloads/
* Rocker
    * Installation:
        * Debian: ``` sudo apt-get install python3-rocker```
        * Other SOs:  ``` pip install rocker ```
    * Nvidia Support Installation (Optional, it could run with Intel Integrated Graphics Card):
        * Rocker with nvidia support:
        ```bash
        distribution=$(. /etc/os-release;echo $ID$VERSION_ID)    && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -    && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
        sudo apt-get update
        sudo apt-get install -y nvidia-docker2
        sudo systemctl restart docker
        ```
* Github Repository
    ```bash
    git clone https://github.com/RoBorregos/robocup-home-candidates-2021.git
    cd robocup-home-candidates-2021
    ```

## Run
