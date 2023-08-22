insert into vendedor(nombre,codigo,vitrina)
values ('carlos','01','Medellin'),
('juan','02','Envigado'),
('maria','03','Bello');
select * from vendedor;

insert into ventas(modo,fecha,Matricula,Stock,infocompra,codigo_vend)
values ('Contado','22/06/2023','cffk 33','300','01','01'),
('Financiera','22/06/2023','cfbk 33','299','01','02'),
('Contado','22/06/2023','cfck 33','298','01','03'),
('Financiera','22/06/2023','cfak 33','297','01','01'),
('Contado','22/06/2023','cfak 38','298','01','02'),
('Financiera','22/06/2023','cfqk 37','297','01','03'),
('Financiera','22/06/2023','cfqk 36','296','01','03');
select *from ventas


insert into infocompra(marca,precio,descuento,potencia,trasmicion)
values ('ford','60.000.000','10%','300','automatico'),
('ford','60.000.000','10%','300','automatico'),
('toyota','30.000.000','5%','150','automatico'),
('mazda','80.000.000','1%','255','automatico'),
('renout','25.000.000','0%','110','manual'),
('ford','120.000.000','10%','300','automatico'),
('audi','90.000.000','10%','300','automatico');
select *from infocompra


insert into Equipamiento(Airbags,pintura,cogineria,luces,Aire,Audio,Rin)
values ('2','rojo','cuero','led','si','8','18'),
('3','negro','cuero vegano','alogeno','no','4','17'),
('2','blanco','cuero','led','si','8','18'),
('3','rojo','cuero sintetico','led','si','8','17'),
('2','gris','tela','led','si','8','18'),
('2','negro','cuero','led','si','8','17'),
('2','blanco','cuero','led','si','8','19'),
('2','gris','cuero','led','si','8','17'),
('8','azul','cuero','led','si','8','21');
select *from Equipamiento





