insert into `veiculo` (`id`, `ano_de_fabricacao`, `identificacao`, `marca`, `modelo`, `placa`) values(11, 2018, '501335', 'Marcopolo', 'Torino S', 'GER-9764')
insert into `veiculo` (`id`, `ano_de_fabricacao`, `identificacao`, `marca`, `modelo`, `placa`) values(12, 2020, '501435', 'Marcopolo', 'Torino S', 'GTU-7844')
insert into `veiculo` (`id`, `ano_de_fabricacao`, `identificacao`, `marca`, `modelo`, `placa`) values(13, 2020, '501634', 'Marcopolo', 'Torino 2014', 'HID-2734')
insert into `veiculo` (`id`, `ano_de_fabricacao`, `identificacao`, `marca`, `modelo`, `placa`) values(14, 2020, '501110', 'Marcopolo', 'Torino 2014', 'GDH-2347')
insert into `veiculo` (`id`, `ano_de_fabricacao`, `identificacao`, `marca`, `modelo`, `placa`) values(15, 2019, '501012', 'Marcopolo', 'Torino 2014', 'GCI-7812')
insert into `veiculo` (`id`, `ano_de_fabricacao`, `identificacao`, `marca`, `modelo`, `placa`) values(16, 2018, '501220', 'Marcopolo', 'Torino S', 'HCY-4655')
insert into `veiculo` (`id`, `ano_de_fabricacao`, `identificacao`, `marca`, `modelo`, `placa`) values(17, 2018, '501405', 'Marcopolo', 'Torino 2014 Express', 'GBT-2342')
insert into `veiculo` (`id`, `ano_de_fabricacao`, `identificacao`, `marca`, `modelo`, `placa`) values(18, 2018, '501500', 'Marcopolo', 'Viale BRT', 'HOP-7564')
insert into `veiculo` (`id`, `ano_de_fabricacao`, `identificacao`, `marca`, `modelo`, `placa`) values(19, 2018, '501610', 'Marcopolo', 'Viale BRT', 'HEI-3452')
insert into `veiculo` (`id`, `ano_de_fabricacao`, `identificacao`, `marca`, `modelo`, `placa`) values(20, 2021, '501620', 'Marcopolo', 'Torino S', 'HTA-5445')
insert into `veiculo` (`id`, `ano_de_fabricacao`, `identificacao`, `marca`, `modelo`, `placa`) values(21, 2019, '501645', 'Marcopolo', 'Torino S', 'HNY-3444')
insert into `veiculo` (`id`, `ano_de_fabricacao`, `identificacao`, `marca`, `modelo`, `placa`) values(22, 2017, '501650', 'Marcopolo', 'Viale BRS', 'EOD-4532')
insert into `veiculo` (`id`, `ano_de_fabricacao`, `identificacao`, `marca`, `modelo`, `placa`) values(23, 2017, '501702', 'Marcopolo', 'Viale BRS', 'EKK-9256')
insert into `veiculo` (`id`, `ano_de_fabricacao`, `identificacao`, `marca`, `modelo`, `placa`) values(24, 2017, '501823', 'Marcopolo', 'Viale BRS', 'ENQ-5554')
insert into `veiculo` (`id`, `ano_de_fabricacao`, `identificacao`, `marca`, `modelo`, `placa`) values(25, 2019, '501245', 'Marcopolo', 'Torino S', 'HTD-4464')

insert into `roteiro` (`id`, `local_chegada`, `local_partida`, `quantidade_paradas`, `quilometragem`, `tempo_esperado`) values(9, 'Sausalito', 'Centro', '30', 31.0, 70)
insert into `roteiro` (`id`, `local_chegada`, `local_partida`, `quantidade_paradas`, `quilometragem`, `tempo_esperado`) values(10, 'Hortencias', 'Centro', '22', 20.0, 55)
insert into `roteiro` (`id`, `local_chegada`, `local_partida`, `quantidade_paradas`, `quilometragem`, `tempo_esperado`) values(11, 'Parque do Alto', 'Centro', '36', 40.0, 90)
insert into `roteiro` (`id`, `local_chegada`, `local_partida`, `quantidade_paradas`, `quilometragem`, `tempo_esperado`) values(12, 'Chácara Mairiporã', 'Centro', '20', 19.0, 50)
insert into `roteiro` (`id`, `local_chegada`, `local_partida`, `quantidade_paradas`, `quilometragem`, `tempo_esperado`) values(13, 'Centro', 'Chácara Mairiporã', '20', 19.0, 50)
insert into `roteiro` (`id`, `local_chegada`, `local_partida`, `quantidade_paradas`, `quilometragem`, `tempo_esperado`) values(14, 'Centro', 'Parque do Alto', '36', 40.0, 90)
insert into `roteiro` (`id`, `local_chegada`, `local_partida`, `quantidade_paradas`, `quilometragem`, `tempo_esperado`) values(15, 'Centro', 'Hortencias', '22', 20.0, 55)
insert into `roteiro` (`id`, `local_chegada`, `local_partida`, `quantidade_paradas`, `quilometragem`, `tempo_esperado`) values(16, 'Centro', 'Sausalito', '30', 31.0, 70)
insert into `roteiro` (`id`, `local_chegada`, `local_partida`, `quantidade_paradas`, `quilometragem`, `tempo_esperado`) values(17, 'Centro ', 'Alpes da Cantareira', '28', 30.0, 75)
insert into `roteiro` (`id`, `local_chegada`, `local_partida`, `quantidade_paradas`, `quilometragem`, `tempo_esperado`) values(18, 'Centro', 'Petrópolis', '25', 27.0, 60)

insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(82, '2021-11-01 06:40:00.0', '2021-11-01 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(83, '2021-11-01 07:40:00.0', '2021-11-01 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(84, '2021-11-01 08:40:00.0', '2021-11-01 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(85, '2021-11-01 09:40:00.0', '2021-11-01 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(86, '2021-11-01 10:40:00.0', '2021-11-01 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(87, '2021-11-01 11:40:00.0', '2021-11-01 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(88, '2021-11-01 12:40:00.0', '2021-11-01 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(89, '2021-11-01 13:40:00.0', '2021-11-01 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(90, '2021-11-01 14:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(91, '2021-11-01 15:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(92, '2021-11-01 16:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(93, '2021-11-01 17:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(94, '2021-11-01 18:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(95, '2021-11-01 19:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(96, '2021-11-01 20:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(97, '2021-11-01 21:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(98, '2021-11-01 22:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(99, '2021-11-02 06:40:00.0', '2021-11-01 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(100, '2021-11-02 07:40:00.0', '2021-11-01 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(101, '2021-11-02 08:40:00.0', '2021-11-01 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(102, '2021-11-02 09:40:00.0', '2021-11-01 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(103, '2021-11-02 10:40:00.0', '2021-11-01 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(104, '2021-11-02 11:40:00.0', '2021-11-01 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(105, '2021-11-02 12:40:00.0', '2021-11-01 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(106, '2021-11-02 13:40:00.0', '2021-11-01 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(107, '2021-11-02 14:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(108, '2021-11-02 15:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(109, '2021-11-02 16:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(110, '2021-11-02 17:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(111, '2021-11-02 18:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(112, '2021-11-02 19:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(113, '2021-11-02 20:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(114, '2021-11-02 21:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(115, '2021-11-02 22:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
;
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(116, '2021-11-01 06:40:00.0', '2021-11-01 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(117, '2021-11-01 07:40:00.0', '2021-11-01 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(118, '2021-11-01 08:40:00.0', '2021-11-01 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(119, '2021-11-01 09:40:00.0', '2021-11-01 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(120, '2021-11-01 10:40:00.0', '2021-11-01 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(121, '2021-11-01 11:40:00.0', '2021-11-01 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(122, '2021-11-01 12:40:00.0', '2021-11-01 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(123, '2021-11-01 13:40:00.0', '2021-11-01 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(124, '2021-11-01 14:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(125, '2021-11-01 15:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(126, '2021-11-01 16:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(127, '2021-11-01 17:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(128, '2021-11-01 18:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(129, '2021-11-01 19:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(130, '2021-11-01 20:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(131, '2021-11-01 21:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(132, '2021-11-01 22:40:00.0', '2021-11-01 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(133, '2021-11-02 06:40:00.0', '2021-11-02 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(134, '2021-11-02 07:40:00.0', '2021-11-02 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(135, '2021-11-02 08:40:00.0', '2021-11-02 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(136, '2021-11-02 09:40:00.0', '2021-11-02 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(137, '2021-11-02 10:40:00.0', '2021-11-02 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(138, '2021-11-02 11:40:00.0', '2021-11-02 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(139, '2021-11-02 12:40:00.0', '2021-11-02 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(140, '2021-11-02 13:40:00.0', '2021-11-02 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(141, '2021-11-02 14:40:00.0', '2021-11-02 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(142, '2021-11-02 15:40:00.0', '2021-11-02 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(143, '2021-11-02 16:40:00.0', '2021-11-02 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(144, '2021-11-02 17:40:00.0', '2021-11-02 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(145, '2021-11-02 18:40:00.0', '2021-11-02 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(146, '2021-11-02 19:40:00.0', '2021-11-02 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(147, '2021-11-02 20:40:00.0', '2021-11-02 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(148, '2021-11-02 21:40:00.0', '2021-11-02 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(149, '2021-11-02 22:40:00.0', '2021-11-02 06:00:00.0', 9, 73, 11);
;
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(150, '2021-11-03 10:40:00.0', '2021-11-03 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(151, '2021-11-03 11:40:00.0', '2021-11-03 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(152, '2021-11-03 12:40:00.0', '2021-11-03 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(153, '2021-11-03 13:40:00.0', '2021-11-03 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(154, '2021-11-03 14:40:00.0', '2021-11-03 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(155, '2021-11-03 15:40:00.0', '2021-11-03 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(156, '2021-11-03 16:40:00.0', '2021-11-03 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(157, '2021-11-03 17:40:00.0', '2021-11-03 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(158, '2021-11-03 18:40:00.0', '2021-11-03 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(159, '2021-11-03 19:40:00.0', '2021-11-03 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(160, '2021-11-03 20:40:00.0', '2021-11-03 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(161, '2021-11-03 21:40:00.0', '2021-11-03 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(162, '2021-11-03 22:40:00.0', '2021-11-03 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(163, '2021-11-04 06:40:00.0', '2021-11-04 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(164, '2021-11-04 07:40:00.0', '2021-11-04 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(165, '2021-11-04 08:40:00.0', '2021-11-04 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(166, '2021-11-04 09:40:00.0', '2021-11-04 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(167, '2021-11-04 10:40:00.0', '2021-11-04 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(168, '2021-11-04 11:40:00.0', '2021-11-04 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(169, '2021-11-04 12:40:00.0', '2021-11-04 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(170, '2021-11-04 13:40:00.0', '2021-11-04 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(171, '2021-11-04 14:40:00.0', '2021-11-04 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(172, '2021-11-04 15:40:00.0', '2021-11-04 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(173, '2021-11-04 16:40:00.0', '2021-11-04 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(174, '2021-11-04 17:40:00.0', '2021-11-04 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(175, '2021-11-04 18:40:00.0', '2021-11-04 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(176, '2021-11-04 19:40:00.0', '2021-11-04 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(177, '2021-11-04 20:40:00.0', '2021-11-04 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(178, '2021-11-04 21:40:00.0', '2021-11-04 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(179, '2021-11-04 22:40:00.0', '2021-11-04 06:00:00.0', 9, 73, 11);
;
;
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(180, '2021-11-05 10:40:00.0', '2021-11-05 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(181, '2021-11-05 11:40:00.0', '2021-11-05 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(182, '2021-11-05 12:40:00.0', '2021-11-05 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(183, '2021-11-05 13:40:00.0', '2021-11-05 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(184, '2021-11-05 14:40:00.0', '2021-11-05 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(185, '2021-11-05 15:40:00.0', '2021-11-05 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(186, '2021-11-05 16:40:00.0', '2021-11-05 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(187, '2021-11-05 17:40:00.0', '2021-11-05 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(188, '2021-11-05 18:40:00.0', '2021-11-05 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(189, '2021-11-05 19:40:00.0', '2021-11-05 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(190, '2021-11-05 20:40:00.0', '2021-11-05 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(191, '2021-11-05 21:40:00.0', '2021-11-05 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(192, '2021-11-05 22:40:00.0', '2021-11-05 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(193, '2021-11-06 06:40:00.0', '2021-11-06 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(194, '2021-11-06 07:40:00.0', '2021-11-06 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(195, '2021-11-06 08:40:00.0', '2021-11-06 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(196, '2021-11-06 09:40:00.0', '2021-11-06 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(197, '2021-11-06 10:40:00.0', '2021-11-06 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(198, '2021-11-06 11:40:00.0', '2021-11-06 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(199, '2021-11-06 12:40:00.0', '2021-11-06 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(200, '2021-11-06 13:40:00.0', '2021-11-06 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(201, '2021-11-06 14:40:00.0', '2021-11-06 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(202, '2021-11-06 15:40:00.0', '2021-11-06 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(203, '2021-11-06 16:40:00.0', '2021-11-06 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(204, '2021-11-06 17:40:00.0', '2021-11-06 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(205, '2021-11-06 18:40:00.0', '2021-11-06 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(206, '2021-11-06 19:40:00.0', '2021-11-06 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(207, '2021-11-06 20:40:00.0', '2021-11-06 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(208, '2021-11-06 21:40:00.0', '2021-11-06 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(209, '2021-11-06 22:40:00.0', '2021-11-06 06:00:00.0', 9, 73, 11);
;
;
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(210, '2021-11-07 10:40:00.0', '2021-11-07 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(211, '2021-11-07 11:40:00.0', '2021-11-07 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(212, '2021-11-07 12:40:00.0', '2021-11-07 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(213, '2021-11-07 13:40:00.0', '2021-11-07 06:00:00.0', 9, 71, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(214, '2021-11-07 14:40:00.0', '2021-11-07 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(215, '2021-11-07 15:40:00.0', '2021-11-07 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(216, '2021-11-07 16:40:00.0', '2021-11-07 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(217, '2021-11-07 17:40:00.0', '2021-11-07 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(218, '2021-11-07 18:40:00.0', '2021-11-07 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(219, '2021-11-07 19:40:00.0', '2021-11-07 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(220, '2021-11-07 20:40:00.0', '2021-11-07 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(221, '2021-11-07 21:40:00.0', '2021-11-07 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(222, '2021-11-07 22:40:00.0', '2021-11-07 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(223, '2021-11-08 06:40:00.0', '2021-11-07 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(224, '2021-11-08 07:40:00.0', '2021-11-07 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(225, '2021-11-08 08:40:00.0', '2021-11-07 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(226, '2021-11-08 09:40:00.0', '2021-11-07 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(227, '2021-11-08 10:40:00.0', '2021-11-07 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(228, '2021-11-08 11:40:00.0', '2021-11-07 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(229, '2021-11-08 12:40:00.0', '2021-11-07 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(230, '2021-11-08 13:40:00.0', '2021-11-07 06:00:00.0', 9, 77, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(231, '2021-11-08 14:40:00.0', '2021-11-07 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(232, '2021-11-08 15:40:00.0', '2021-11-07 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(233, '2021-11-08 16:40:00.0', '2021-11-07 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(234, '2021-11-08 17:40:00.0', '2021-11-07 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(235, '2021-11-08 18:40:00.0', '2021-11-07 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(236, '2021-11-08 19:40:00.0', '2021-11-07 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(237, '2021-11-08 20:40:00.0', '2021-11-07 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(238, '2021-11-08 21:40:00.0', '2021-11-07 06:00:00.0', 9, 73, 11);
insert into `viagem` (`id`, `chegada`, `partida`, `roteiro_id`, `usuario_id`, `veiculo_id`) values(239, '2021-11-08 22:40:00.0', '2021-11-07 06:00:00.0', 9, 73, 11);





insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(12, '2021-11-10 14:40:00.0', 'pneu furado', 4, 74, 11);;
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(13, '2021-11-12 18:40:00.0', 'troca de embreagem', 4, 74,; 13);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(14, '2021-11-20 19:40:00.0', 'vidro quebrado', 4, 74, 15);;
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(15, '2021-11-21 20:40:00.0', 'limpeza de bico de injeção';, 4, 74, 17);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(16, '2021-11-22 21:40:00.0', 'troca de lâmpadas', 4, 74, ;19);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(17, '2021-11-23 22:40:00.0', 'troca de parachoque', 4, 74;, 21);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(18, '2021-11-24 21:40:00.0', 'troca de retrovisor', 4, 74, 23);

insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(19, '2021-11-10 14:40:00.0', 'limpeza', 2, 78, 11);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(20, '2021-11-11 18:40:00.0', 'limpeza', 2, 78, 12);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(21, '2021-11-12 19:40:00.0', 'limpeza', 2, 78, 13);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(22, '2021-11-13 20:40:00.0', 'limpeza', 2, 78, 14);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(23, '2021-11-14 21:40:00.0', 'limpeza', 2, 78, 15);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(24, '2021-11-15 22:40:00.0', 'limpeza', 2, 78, 16);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(25, '2021-11-16 21:40:00.0', 'limpeza', 2, 78, 17);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(26, '2021-11-17 14:40:00.0', 'limpeza', 2, 78, 18);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(27, '2021-11-18 18:40:00.0', 'limpeza', 2, 78, 19);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(28, '2021-11-19 19:40:00.0', 'limpeza', 2, 78, 20);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(29, '2021-11-20 20:40:00.0', 'limpeza', 2, 78, 21);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(30, '2021-11-21 21:40:00.0', 'limpeza', 2, 78, 22);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(31, '2021-11-22 22:40:00.0', 'limpeza', 2, 78, 23);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(32, '2021-11-23 21:40:00.0', 'limpeza', 2, 78, 24);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(33, '2021-11-24 14:40:00.0', 'limpeza', 2, 78, 25);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(34, '2021-11-25 18:40:00.0', 'limpeza', 2, 78, 11);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(35, '2021-11-26 19:40:00.0', 'limpeza', 2, 78, 12);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(36, '2021-11-27 20:40:00.0', 'limpeza', 2, 78, 13);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(37, '2021-11-28 21:40:00.0', 'limpeza', 2, 78, 14);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(38, '2021-11-29 22:40:00.0', 'limpeza', 2, 78, 15);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(39, '2021-11-30 21:40:00.0', 'limpeza', 2, 78, 16);

insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(40, '2021-11-16 21:40:00.0', 'Troca de óleo do motor', 3, 74, 17);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(41, '2021-11-17 14:40:00.0', 'Troca de óleo do motor', 3, 74, 18);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(42, '2021-11-18 18:40:00.0', 'Troca de óleo do motor', 3, 74, 19);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(43, '2021-11-19 19:40:00.0', 'Troca de óleo do motor', 3, 76, 20);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(44, '2021-11-20 20:40:00.0', 'Troca de óleo do motor', 3, 76, 21);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(45, '2021-11-21 21:40:00.0', 'Troca de óleo do motor', 3, 76, 22);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(46, '2021-11-22 22:40:00.0', 'Troca de óleo do motor', 3, 76, 23);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(47, '2021-11-23 21:40:00.0', 'Troca de óleo do motor', 3, 76, 24);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(48, '2021-11-24 14:40:00.0', 'Troca de óleo do motor', 3, 76, 25);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(49, '2021-11-25 18:40:00.0', 'Troca de óleo do motor', 3, 76, 11);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(50, '2021-11-26 19:40:00.0', 'Troca de óleo do motor', 3, 76, 12);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(51, '2021-11-27 20:40:00.0', 'Troca de óleo do motor', 3, 76, 13);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(52, '2021-11-28 21:40:00.0', 'Troca de óleo do motor', 3, 76, 14);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(53, '2021-11-29 22:40:00.0', 'Troca de óleo do motor', 3, 74, 15);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(54, '2021-11-30 21:40:00.0', 'Troca de óleo do motor', 3, 76, 16);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(55, '2021-11-19 21:40:00.0', 'Troca do fluído de freio', 3, 76, 17);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(56, '2021-11-20 14:40:00.0', 'Troca do fluído de freio', 3, 76, 18);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(57, '2021-11-21 18:40:00.0', 'Troca do fluído de freio', 3, 76, 19);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(58, '2021-11-22 19:40:00.0', 'Troca do fluído de freio', 3, 76, 20);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(59, '2021-11-23 20:40:00.0', 'Troca do fluído de freio', 3, 74, 21);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(60, '2021-11-24 21:40:00.0', 'Troca do fluído de freio', 3, 74, 22);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(61, '2021-11-25 22:40:00.0', 'Troca do fluído de freio', 3, 74, 23);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(62, '2021-11-26 21:40:00.0', 'Troca do fluído de freio', 3, 74, 24);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(63, '2021-11-27 14:40:00.0', 'Troca do fluído de freio', 3, 74, 25);

insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(64, '2021-11-23 12:40:00.0', 'colisão frontal leve', 6, 76, 21);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(65, '2021-11-24 11:40:00.0', 'colisão lateral leve', 6, 74, 23);

insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(66, '2021-11-10 12:40:00.0', 'pneu furado', 5, 74, 11);

insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(67, '2021-11-10 14:40:00.0', 'Troca de óleo do motor', 3, 74, 11);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(68, '2021-11-11 18:40:00.0', 'Troca de óleo do motor', 3, 74, 12);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(69, '2021-11-12 19:40:00.0', 'Troca de óleo do motor', 3, 74, 13);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(70, '2021-11-13 20:40:00.0', 'Troca de óleo do motor', 3, 74, 14);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(71, '2021-11-14 21:40:00.0', 'Troca de óleo do motor', 3, 74, 15);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(72, '2021-11-15 22:40:00.0', 'Troca de óleo do motor', 3, 74, 16);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(73, '2021-11-19 21:40:00.0', 'limpeza', 2, 78, 17);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(74, '2021-11-20 14:40:00.0', 'limpeza', 2, 78, 18);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(75, '2021-11-21 18:40:00.0', 'limpeza', 2, 78, 19);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(76, '2021-11-22 19:40:00.0', 'limpeza', 2, 78, 20);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(77, '2021-11-23 20:40:00.0', 'limpeza', 2, 78, 21);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(78, '2021-11-24 21:40:00.0', 'limpeza', 2, 78, 22);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(79, '2021-11-25 22:40:00.0', 'limpeza', 2, 78, 23);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(80, '2021-11-26 21:40:00.0', 'limpeza', 2, 78, 24);
insert into `evento` (`id`, `data_hora`, `descricao`, `tipo_evento_id`, `usuario_id`, `veiculo_id`) values(81, '2021-11-27 14:40:00.0', 'limpeza', 2, 78, 25);

