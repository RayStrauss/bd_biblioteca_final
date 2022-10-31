create database bd_biblioteca5;
use bd_biblioteca5;

create table livro (
id_livro int not null auto_increment primary key,
nome_livro varchar (200),
genero_livro varchar (200),
cod_livro varchar(15),
id_autor int,
id_editora int
)default charset = utf8; 
 
create table editora (
id_editora int not null auto_increment primary key,
nome_editora varchar (200),
telefone  varchar (200),
endereco varchar (200)
)default charset = utf8; 

create table autor(
id_autor int not null auto_increment primary key,
nome_autor varchar (200),
telefone_autor varchar (200),
sexo_autor enum ('m','f')
)default charset = utf8; 

create table prof (
id_usuario int not null auto_increment primary key,
nome_prof varchar (200),
cod_prof varchar (200),
telefone_prof varchar (200),
tipo_usuario varchar (200),
endereco varchar (200)
)default charset = utf8; 

create table emprestimo(
id_emprestimo int not null auto_increment primary key,
id_livro int,
data_emprestimo date,
id_aluno int,
id_usuario int
)default charset = utf8; 

alter table livro add constraint fk_id_autor foreign key (id_autor) references autor(id_autor);
alter table livro add constraint fk_id_editora foreign key(id_editora) references editora(id_editora);
alter table emprestimo add constraint fk_id_livro foreign key(id_livro) references livro(id_livro);
alter table emprestimo add constraint fk_id_usuario foreign key(id_usuario) references prof(id_usuario);


insert into livro (nome_livro, genero_livro, cod_livro, id_autor, id_editora)
values ('1 dia sem vc', 'romance', '1','1','1');

insert into livro (nome_livro, genero_livro, cod_livro)
values ('cinderela', 'fantasia', '2');

insert into autor (nome_autor, telefone_autor, sexo_autor)
values ('vitoria', '12345678','f');

insert into editora (nome_editora, telefone, endereco)
values ('edit', '51323255', 'sao paulo');

insert into prof (nome_prof, cod_prof, telefone_prof, tipo_usuario, endereco)
values ('gabriela', '123', '1','professor', 'sao matheus');

insert into prof (nome_prof, cod_prof, telefone_prof, tipo_usuario, endereco)
values ('geovana', '2', '2', 'prof', 'sao matheus');
 
insert into emprestimo (data_emprestimo, id_aluno, id_livro)
values ( '2022.09.30','2','1');

select*from livro;
select*from editora;
select*from autor;
select*from prof;
select*from emprestimo;