create database Projeto_Academia;
use Projeto_Academia;

	/* TABELA DA EMPRESA */
    
create table tb_empresa(
	cd_empresa int not null auto_increment,
    ds_empresa varchar(35) not null,
    ds_endereco varchar(50) not null,
    nr_contato bigint(11) not null,
    nr_cnpj bigint(14) not null,
    constraint pk_empresa primary key(cd_empresa)
);

insert into tb_empresa(ds_empresa,ds_endereco,nr_contato,nr_cnpj)
	values('Focus Body','R. Arno Waldemar Dohler, 957',4734417700,'12345678910111');


	/* FIM TABELA EMPRESA */

	/* TABELA DE PROFISSAO */

create table tb_profissao (
	cd_profissao int not null auto_increment,
    ds_profissao varchar(50) not null,
    vl_salario decimal (8,2) not null, 
    
	constraint pk_profissao primary key (cd_profissao)
);

insert into tb_profissao(ds_profissao,vl_salario)
	values("Atendente", 1200.00);
    
insert into tb_profissao(ds_profissao,vl_salario)
	values("Personal trainer", 2500.00);
    
insert into tb_profissao(ds_profissao,vl_salario)
	values("Professora de FitDance", 3000.00);
    
insert into tb_profissao(ds_profissao,vl_salario)
	values("Professor de Artes Marciais", 2000.00);
    
insert into tb_profissao(ds_profissao,vl_salario)
	values("Supervisor", 2000.00);
    
insert into tb_profissao(ds_profissao,vl_salario)
	values("Auxiliar de Limpeza", 1200.00);

insert into tb_profissao(ds_profissao,vl_salario)
	values("Avaliador físico", 2700.00);

insert into tb_profissao(ds_profissao,vl_salario)
	values("Gerente", 5000.00);
    

    
	/* FIM TABELA PROFISSAO */



	/* TABELA DE FUNCIONÁRIO */

create table tb_funcionario (
	cd_funcionario int not null auto_increment,
    nm_funcionario varchar(45) not null,
    nr_cpf_funcionario bigint(11) not null,
    nr_rg_funcionario bigint(8) not null,
    pwd_funcionario varchar(32) not null,
    nm_login_funcionario varchar(20) not null,
    cd_empresa int not null,
    cd_profissao int not null,
    
    constraint pk_funcionario primary key(cd_funcionario),
    
    constraint fk_empresa foreign key(cd_empresa)
    references tb_empresa (cd_empresa),
    
    constraint fk_profissao foreign key(cd_profissao)
    references tb_profissao (cd_profissao)
);

insert into tb_funcionario(nm_funcionario,nr_cpf_funcionario,nr_rg_funcionario,pwd_funcionario,
			nm_login_funcionario,cd_empresa,cd_profissao)
values ("Willian Bruno",12284745788,84845762,"Will17","Will_17",1,2);

insert into tb_funcionario(nm_funcionario,nr_cpf_funcionario,nr_rg_funcionario,pwd_funcionario,
			nm_login_funcionario,cd_empresa,cd_profissao)
values ("Gabriel Maziero",13256947855,84842134,"mazieiro123","Gab_mazi17",1,2);
    
insert into tb_funcionario(nm_funcionario,nr_cpf_funcionario,nr_rg_funcionario,pwd_funcionario,
			nm_login_funcionario,cd_empresa,cd_profissao)
values ("Marcel Leite de Farias",13284706977,89225678,"marcel_farias17","MarcelF1712",1,8);

insert into tb_funcionario(nm_funcionario,nr_cpf_funcionario,nr_rg_funcionario,pwd_funcionario,
			nm_login_funcionario,cd_empresa,cd_profissao)
values ("Eilly Lima",45612305988,89132569,"Eigalerally","yllie20",1,3);

insert into tb_funcionario(nm_funcionario,nr_cpf_funcionario,nr_rg_funcionario,pwd_funcionario,
			nm_login_funcionario,cd_empresa,cd_profissao)
values ("Luan Nonato",13259067855,89253614,"Nonato09","luannonato09",1,4);

insert into tb_funcionario(nm_funcionario,nr_cpf_funcionario,nr_rg_funcionario,pwd_funcionario,
			nm_login_funcionario,cd_empresa,cd_profissao)
values ("Andreia Do Nascimento",22129955706,89454576,"nascomex17","AndreiaNasc",1,5);

insert into tb_funcionario(nm_funcionario,nr_cpf_funcionario,nr_rg_funcionario,pwd_funcionario,
			nm_login_funcionario,cd_empresa,cd_profissao)
values ("Alexandre Podgurski",25929988770,89454588,"podgurski21","AleXANDE09",1,6);

insert into tb_funcionario(nm_funcionario,nr_cpf_funcionario,nr_rg_funcionario,pwd_funcionario,
			nm_login_funcionario,cd_empresa,cd_profissao)
values ("Alessandro Baltazar",84913284788,89454512,"andreialove","Gordo1712",1,7);

insert into tb_funcionario(nm_funcionario,nr_cpf_funcionario,nr_rg_funcionario,pwd_funcionario,
			nm_login_funcionario,cd_empresa,cd_profissao)
values ("Julia Folini",25912384799,89741265,"cristofolini17","Juliazinha12",1,1);

insert into tb_funcionario(nm_funcionario,nr_cpf_funcionario,nr_rg_funcionario,pwd_funcionario,
			nm_login_funcionario,cd_empresa,cd_profissao)
values ("Bruno Rossi",13295692888,89451234,"paodequeijo12","Bruno_rossi",1,5);

	/* FIM TABELA FUNCIONARIO */
    
    
    
	/* TABELA DE CLIENTE */

create table tb_cliente(
	cd_cliente int not null auto_increment,
    nm_cliente varchar(45) not null, 
    nr_celular_cliente bigint(11) not null,
    ds_email_cliente varchar(45) not null,
    nr_cpf_cliente bigint(11) not null,
    nr_rg_cliente bigint(8) not null,
    
	constraint pk_cliente primary key(cd_cliente)
);

insert into tb_cliente(nm_cliente,nr_celular_cliente,ds_email_cliente,nr_cpf_cliente,nr_rg_cliente)
values("Paulo Gustavo",47984857826,"paulogu@gmail.com",16789502170,84785696);

insert into tb_cliente(nm_cliente,nr_celular_cliente,ds_email_cliente,nr_cpf_cliente,nr_rg_cliente)
values("Otavio Rezende",47985872623,"otavrezende@outlook.com",17812315988,84562978);

insert into tb_cliente(nm_cliente,nr_celular_cliente,ds_email_cliente,nr_cpf_cliente,nr_rg_cliente)
values("José da Costa Neto",47999270241,"jose_neto@gmail.com",88129988970,89226670);

insert into tb_cliente(nm_cliente,nr_celular_cliente,ds_email_cliente,nr_cpf_cliente,nr_rg_cliente)
values("Rafaela Nazario da Silva",47994495330,"rafa_linda07@hotmail.com",55439718184,62936975);

insert into tb_cliente(nm_cliente,nr_celular_cliente,ds_email_cliente,nr_cpf_cliente,nr_rg_cliente)
values("Leonardo Duarte",47940024378,"leoduarte09@outlook.com",75842691760,84966044);

insert into tb_cliente(nm_cliente,nr_celular_cliente,ds_email_cliente,nr_cpf_cliente,nr_rg_cliente)
values("Marcos Felipe Dumond",47997184237,"marfeliped@gmail.com",24375628855,52598529);

insert into tb_cliente(nm_cliente,nr_celular_cliente,ds_email_cliente,nr_cpf_cliente,nr_rg_cliente)
values("Julia Barbosa",47996307615,"barbosaju@gmail.com",66591334610,90772931);

insert into tb_cliente(nm_cliente,nr_celular_cliente,ds_email_cliente,nr_cpf_cliente,nr_rg_cliente)
values("Rafael Elias de Paulosa",47989689582,"rafaelias17@gmail.com",90222258365,50719719);

insert into tb_cliente(nm_cliente,nr_celular_cliente,ds_email_cliente,nr_cpf_cliente,nr_rg_cliente)
values("Barbara Madeira",47996343301,"madeiraba@outlook.com",64640198485,25744893);

insert into tb_cliente(nm_cliente,nr_celular_cliente,ds_email_cliente,nr_cpf_cliente,nr_rg_cliente)
values("Marciel da Cunha",47984859308,"marciel.cunha@outlook.com",11311784403,23832424);


	/* FIM TABELA CLIENTE */




	/* TABELA DE PAGAMENTO */

create table tb_pagamento (
	cd_pagamento int not null auto_increment,
    ds_pagamento varchar(45) not null,
    vl_pagamento decimal(8,2) not null,
    ds_plano varchar(45) not null,
    cd_cliente int not null,
    
    constraint pk_pagamento primary key(cd_pagamento),
    
    constraint fk_cliente foreign key(cd_cliente)
    references tb_cliente(cd_cliente)

);

insert into tb_pagamento(cd_cliente,ds_pagamento,vl_pagamento,ds_plano)
values(1,"crédito",59.90,"silver/mensal");

insert into tb_pagamento(cd_cliente,ds_pagamento,vl_pagamento,ds_plano)
values(2,"débito",326.00,"silver/semestral");

insert into tb_pagamento(cd_cliente,ds_pagamento,vl_pagamento,ds_plano)
values(3,"débito",1149.99,"diamond/anual");

insert into tb_pagamento(cd_cliente,ds_pagamento,vl_pagamento,ds_plano)
values(4,"boleto",79.90,"gold/mensal");

insert into tb_pagamento(cd_cliente,ds_pagamento,vl_pagamento,ds_plano)
values(5,"boleto",575.99,"silver/anual");

insert into tb_pagamento(cd_cliente,ds_pagamento,vl_pagamento,ds_plano)
values(6,"débito",469.50,"gold/semestral");

insert into tb_pagamento(cd_cliente,ds_pagamento,vl_pagamento,ds_plano)
values(7,"dinheiro",767.99,"gold/anual");

insert into tb_pagamento(cd_cliente,ds_pagamento,vl_pagamento,ds_plano)
values(8,"crédito",647.50,"diamond/semestral");

insert into tb_pagamento(cd_cliente,ds_pagamento,vl_pagamento,ds_plano)
values(9,"crédito",59.90,"silver/mensal");

insert into tb_pagamento(cd_cliente,ds_pagamento,vl_pagamento,ds_plano)
values(10,"débito",119.90,"diamond/mensal");
    
/* FIM TABELA PAGAMENTO */
    
    
/* select para ver as tabelas */

select * from tb_empresa;
select * from tb_funcionario;
select * from tb_profissao;
select * from tb_cliente;
select * from tb_pagamento;

