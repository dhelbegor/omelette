# Omelette Boilerplate

Omelette é um boilerplate que eu criei usando o template base do django para dar uma agilizada nos meus projetos, deixei a pasta `templates` com as configurações básicas como o *base.html* e a pasta includes, também criei o *local_settings* e deixei pré-configurado, a pasta `apps` foi destinada para os aplicativos.

#####Porque diabos Omelette?
> *Bem, basicamente para se fazer um bom omelette precisamos apenas de ovos e os igredientes que sejam do seu agrado, por isso esse nome, aqui no caso a base(ovos) e o django, com ele em mãos basta colocar os ingredientes que deja e começar a cozinhar.*

**pré-requisitos**:

- [Nodejs]
- [Python]
- [Ruby]

**requisitos**:

- [Bower]
- [Gulp]
- [Sass]
- [Virtualenv]
- [Django-1.9+]


#####Como utilizar

Tendo em mente que você tenha o **pré-requisito e o virtualenv** instalado, inicie e ative um ambiente virtual.

```bash
virtualenv -p python3 meu_ambiente
cd meu_ambiente
source bin/activate
```

com o ambiente criado e ativado instale o Django.

```bash
pip install django
pip freeze > requirements.txt
```

Inicie um projeto Django usando o seguinte comando (*o uso do* `.` *no final diz para iniciar o projeto com o arquivo* `manage.py` *na raiz em que se encontra o mesmo*).

```bash
django-admin.py startproject --template=https://github.com/dhelbegor/omelette/archive/master.zip --extension=md --name=Makefile --name=local_settings.py meu_projeto .
```

#####bower

As versões mais atuais do nodejs já vem com o npm instalado, portanto não precisamos instala-lo, para instalar o bower faça o seguinte.

```
npm install -g bower
```

Agora instale as dependências:

```
bower install
```


#####gulp

Para utilizar o gulp basta rodar o seguinte comando logo a baixo, fazendo isso ele sera instalado globalmente:

```
npm install -g gulp
```

agora vamos instalar as dependências do gulp:

```
npm install gulp-concat gulp-minify-css gulp-sass
```

pronto, agora basta compilar o sass com o gulp e rodar o projeto (é necessário usar o `chmod +x` para dar permissão ao arquivo `manage.py`).

```bash
gulp
chmod +x manage.py
make migrate && make run
```

#####Novas Apps

Para criar novos aplicativos use o seguinte comando:

```bash
cd apps && ../manage.py startapp meu_app && cd ..
```


[Nodejs]:https://nodejs.org/en/
[Python]:http://wiki.python.org.br/
[Ruby]:https://www.ruby-lang.org/pt/
[Bower]:http://bower.io/
[Gulp]:http://gulpjs.com/
[Sass]:http://sass-lang.com/
[Virtualenv]:https://virtualenv.readthedocs.org/en/latest/installation.html
[Django-1.9+]:https://www.djangoproject.com/
