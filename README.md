# A Vagrant Configuration for Developers

Ora che ci siamo dati un tono, scrivendo il titolo in inglese, via con le istruzioni:

1. Scaricate [Virtualbox](https://www.virtualbox.org/wiki/Downloads) e installatelo
2. Scaricate [Vagrant](http://www.vagrantup.com/) e installatelo
3. Scaricate [Cygwin](http://cygwin.com/) e installatelo con il pacchetto OpenSSH (se avete già Git installato su Windows, non ne avete bisogno)
4. Clonate questo repository
5. Aprite Cygwin (o git bash) e posizionatevi nella cartella del repository
6. Eseguite il comando `vagrant up`
7. Aprite il browser all'URL http://localhost:8080/phpinfo.php : voilà, un server completo ai vostri comandi.
8. Tutto quello che inserite nella cartella htdocs è automaticamente visibile da Apache sul server
9. Per fermare la macchina eseguite `vagrant halt`. Per avviarla nuovamente, `vagrant up`

Ci sono ancora un po' di cose da perfezionare ma come base di partenza direi che ci siamo ;)