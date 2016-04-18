CREATE TABLE seccion
(
  pk SMALLINT(6) PRIMARY KEY NOT NULL,
  seccion VARCHAR(100) NOT NULL,
  activa TINYINT(1)
);
CREATE TABLE timestamps
(
  create_time TIMESTAMP DEFAULT 'CURRENT_TIMESTAMP',
  update_time TIMESTAMP
);
CREATE TABLE user
(
  username VARCHAR(16) NOT NULL,
  email VARCHAR(255),
  password VARCHAR(32) NOT NULL,
  create_time TIMESTAMP DEFAULT 'CURRENT_TIMESTAMP'
);
CREATE TABLE articulo
(
  pk MEDIUMINT(9) PRIMARY KEY NOT NULL,
  titulo VARCHAR(1000) NOT NULL,
  descripcion VARCHAR(10000) NOT NULL,
  fecha_creacion DATETIME,
  alias VARCHAR(1000),
  vigencia DATETIME,
  seccion_pk SMALLINT(6) NOT NULL,
  fecha_inicio_publicacion DATETIME,
  fecha_fin_publicacion DATETIME,
  CONSTRAINT fk_nota_seccion FOREIGN KEY (seccion_pk) REFERENCES seccion (pk)
);
CREATE INDEX fk_nota_seccion_idx ON articulo (seccion_pk);
CREATE TABLE media_articulo
(
  nota_pk MEDIUMINT(9) NOT NULL,
  media BLOB NOT NULL,
  mime VARCHAR(100) NOT NULL,
  descripcion VARCHAR(1000),
  CONSTRAINT fk_media_nota_nota1 FOREIGN KEY (nota_pk) REFERENCES articulo (pk)
);
CREATE INDEX fk_media_nota_nota1_idx ON media_articulo (nota_pk);
CREATE TABLE categoria
(
  category_id INT(11) PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL
);