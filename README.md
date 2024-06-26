# MyK8sCluster
Hereby repository is a presentation of kubernetes cluster I built utilizing two Raspberry Pi boards. Both boards have Ubuntu 22.04 as OS. K3s is an orchestrator. Two nodes are available one master and one worker. I also wrote some Terraform manifests which deploy single nginx pod to the cluster


## Table of contents
* [Technologies](#technologies)
* [Pictures](#pictures)
* [Status](#status)
* [Useful links](#useful_links)
* [Inspiration](#inspiration)


## Technologies
* 2x Rasberry Pi 4
* Ubuntu 22.04.2 LTS (Jammy Jellyfish)
* K3s


## Pictures
![RaspberryPiBoards](docs/RaspberryBoards.jpg)

<p style="text-align: center">Picture 1. Raspberry Pi boards within a rack</p>

<p align="center">
    <img src="docs/lscpu.png">
</p>

<p style="text-align: center">Picture 2. Output of lscpu command</p>

<p align="center">
    <img src="docs/k9s.png">
</p>

<p style="text-align: center">Picture 3. k9s dashboard</p>


## Useful links
During development I used those two examples to write terraform manifests which deploy single nginx pod and NodePort
- [Terraform docs](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/pod)
- [Google example](https://github.com/terraform-google-modules/terraform-google-kubernetes-engine/blob/v30.2.0/examples/deploy_service/main.tf)

## Status
Project is: _finished_


## Inspiration
GCE and AWS prices :P 