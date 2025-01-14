# Automatisation de l'installation d'une VM avec Kickstart

Ce guide vous permettra d'automatiser l'installation d'une machine virtuelle (VM) en utilisant Kickstart, un outil d'automatisation pour les distributions basées sur Red Hat (comme RHEL, CentOS, Fedora, etc.). L'objectif est de faciliter le déploiement rapide et standardisé des machines virtuelles sans intervention manuelle.

## Prérequis

Avant de commencer, assurez-vous d'avoir les éléments suivants :

- Une machine hôte avec une distribution Linux basée sur Red Hat (RHEL, CentOS, Fedora, etc.).
- Python 3 pour héberger le fichier Kickstart sur un serveur HTTP local.
- `virt-install` pour la création et le lancement de la VM.
- L'outil `ksvalidator` pour valider la syntaxe du fichier Kickstart.
- Un accès à un dépôt d'images ISO (comme CentOS, Fedora, RHEL).

## Étapes de configuration

### 1. Télécharger l'image ISO de la distribution RHEL/CentOS/Fedora

Commencez par télécharger l'image ISO de la distribution RHEL ou CentOS que vous souhaitez utiliser pour l'installation. Vous pouvez télécharger l'ISO depuis les sites officiels de CentOS ou Fedora :

- [Télécharger CentOS](https://www.centos.org/download/)
- [Télécharger Fedora](https://getfedora.org/)

Demarrez le server pour telecharger le fichier kickstart
`sudo python3 -m http.server 8000 --directory /chemin/vers/ks/`
et lancer le script: `virt-install.sh`

Une fois l'ISO téléchargée, déplacez-la dans le répertoire `/var/lib/libvirt/images/` :

```bash
sudo mv /chemin/vers/l'image.iso /var/lib/libvirt/images/

