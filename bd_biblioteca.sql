create database bd_biblioteca;
use bd_biblioteca;

create table editora (
id_editora int not null auto_increment primary key,
nome_editora varchar (100),
telefone  varchar (20),
endereco varchar (100)
)default charset = utf8; 

create table autor(
id_autor int not null auto_increment primary key,
nome_autor varchar (100),
telefone_autor varchar (20),
sexo_autor enum ('M','F')
)default charset = utf8; 

create table livro (
id_livro int not null auto_increment primary key,
nome_livro varchar (200),
genero_livro varchar (50),
cod_livro varchar(15),
id_autor int,
id_editora int
)default charset = utf8; 
alter table livro add constraint fk_autor foreign key (id_autor) references autor(id_autor);
alter table livro add constraint fk_editora foreign key(id_editora) references editora(id_editora);
 
create table usuario (
id_usuario int not null auto_increment primary key,
nome_usuario varchar (100),
telefone_usuario varchar (20),
tipo_usuario varchar (20),
endereco varchar (100)
)default charset = utf8; 

create table emprestimo(
id_emprestimo int not null auto_increment primary key,
data_emprestimo date,
data_devolucao date,
id_livro int,
id_usuario int
)default charset = utf8; 

alter table emprestimo add constraint fk_livro foreign key(id_livro) references livro(id_livro);
alter table emprestimo add constraint fk_usuario foreign key(id_usuario) references usuario(id_usuario);


insert into editora (nome_editora, telefone, endereco)
values ('Vida Nova', '4192637499', 'Av. das Flores, Curitiba');

insert into autor (nome_autor, telefone_autor, sexo_autor)
values ('Lucas Marques', '4184592834','M');

insert into livro (nome_livro, genero_livro, cod_livro, id_autor, id_editora)
values ('Geografia - Nordeste', 'Educacional', '57269', '1', '1');

insert into usuario (nome_usuario, telefone_usuario, tipo_usuario, endereco)
values ('Liara', '4197297355','Aluno', 'R. Cumbui');
 
insert into emprestimo (data_emprestimo, data_devolucao, id_livro, id_usuario)
values ('2022.09.30', '2022-10-07', '1', '1');

select*from editora;
select*from autor;
select*from livro;
select*from usuario;
select*from emprestimo;
