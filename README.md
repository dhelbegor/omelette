# Omelette Boilerplate

Omelette é um boilerplate que eu criei usando o template base do django para dar uma agilizada nos meus projetos, deixei a pasta `templates` com as configurações básicas como o *base.html* e a pasta includes, também criei a pasta *settings* e deixei pré-configurada, a pasta `apps` foi destinada para os aplicativos.

#####Porque diabos Omelette?
> *Bem, basicamente para se fazer um bom omelette precisamos apenas de ovos e os igredientes que sejam do seu agrado, por isso esse nome, aqui no caso a base(ovos) e o django, com ele em mãos basta colocar os ingredientes que deja e começar a cozinhar.*

**pré-requisitos**:

- [Docker]
- [Python]
- [Virtualenv]

**requisitos adicionais**:

- [Bower]
- [Gulp]
- [Sass]
- [Tmux]
- [Nodejs]
- [Ruby]
- [Git]
- [Vim]


#####Como utilizar 

Tendo em mente que você tenha o **pré-requisitos** instalado, inicie e ative um ambiente virtual.

_Atenção: o virtualenv e apenas uma instalação temporaria._

```bash
mkdir project_folder
cd project_folder/
virtualenv -p python3 .venv
source .venv/bin/activate
```
Instale o django
```bash
pip install -r requirements/virtual.pip
```

com o ambiente criado inicie um projeto Django usando o seguinte comando (*o uso do* `.` *no final diz para iniciar o projeto com o arquivo* `manage.py` *na raiz em que se encontra o mesmo*).

```bash
django-admin.py startproject --template=https://github.com/dhelbegor/omelette/archive/master.zip --extension=md --name=Makefile --name=local_settings.py my_project .
```

#####docker

Desative o ambiente virtual e exclua a pasta .venv.

```bash
source .venv/bin/deactivate
rm -rf .venv
```

Agora inicie o build do docker:

```
docker build -f $(pwd)/docker/Dockerfile -t docker_name .
```

Para utilizar o container criado basta rodar o seguinte comando:

```
docker run -ti -v $(pwd)/:/root -p 8000:8000 -p 3000:3000 container_name bash
```

#####Novas Apps

Para criar novos aplicativos use o seguinte comando:

```bash
cd apps && ../manage.py startapp meu_app && cd ..
```

[Docker]:https://www.docker.com/
[Nodejs]:https://nodejs.org/en/
[Python]:http://wiki.python.org.br/
[Ruby]:https://www.ruby-lang.org/pt/
[Bower]:http://bower.io/
[Gulp]:http://gulpjs.com/
[Git]:https://git-scm.com/
[Vim]:http://www.vim.org/
[Sass]:http://sass-lang.com/
[Virtualenv]:https://virtualenv.readthedocs.org/en/latest/installation.html
[Tmux]:https://tmux.github.io/
