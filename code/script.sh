echo "Adicionando inventório como variável de ambiente"
export ANSIBLE_INVENTORY=./ansible_hosts

echo "Instalando nginx e ElasticSearch utilizando playbook"
ansible-playbook install_services.yml

if systemctl is-active --quiet elasticsearch && systemctl is-active --quiet nginx
  then echo "Everything is running..."
else
  echo "Oh something not running as planned"
fi
