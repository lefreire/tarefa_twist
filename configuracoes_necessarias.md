Para que o sistema web fique acessível pela internet, é necessário editar configurações no nginx. Tendo disponível o arquivo principal do sistema (como um index.html, por exemplo), os seguintes passos são necessários:

1. acessar a pasta */etc/nginx/sites-enabled*
2. criar um arquivo - sem extensão - com qualquer nome desejado *(por exemplo, server)*
3. neste arquivo, definir a porta que será utilizada para acessar o sistema, o nome do server e o lugar onde está armazenado o *index.html*.

```
server {
   listen porta;
   listen [::]:porta;

   server_name nome_server;

   root caminho_para_arquivo;
   index index.html;
}
```

4. depois deste passo, é necessário fazer restart no nginx.