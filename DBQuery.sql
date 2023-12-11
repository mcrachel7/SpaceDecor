CREATE TABLE Users (
    idUsers int NOT NULL PRIMARY KEY IDENTITY(1,1),
	FirstName varchar(80),
	LastName varchar(80),
	Email varchar(80),
	UserPass varchar(50),
	UserAdmin int
);

CREATE TABLE Products(
	idProducts int NOT NULL PRIMARY KEY,
	ProductName varchar(200),
	ProductDesc varchar(450),
	Marca varchar(450),
	Price float,
	Color varchar(50),
	Dimensions varchar(60),
	Materials varchar(60),
	ProductType varchar(60),
	StockQ int,
	Thumbnail varchar(200),
);

CREATE TABLE ProductsImg(
	idImage int PRIMARY KEY IDENTITY(1,1),
	idProducto int,
	ImageUrl varchar(300),
	Nombre varchar(300)

);

CREATE TABLE Orders(
	idOrder int NOT NULL PRIMARY KEY IDENTITY(1,1),
	idClient int,
	idProduct int,
       ProductName varchar(200),
        Price float,
	DateOrder date
);

CREATE TABLE CustomOrders(
	idOrder int NOT NULL PRIMARY KEY IDENTITY(1,1),
	idClient int,
	idproduct int,
        ProductName varchar(200),
	ProductDesc varchar(450),
	Price float,
	Color varchar(50),
	Dimensions varchar(60),
	Materials varchar(60),
	Quantity int,
	
);

CREATE TABLE Contacto(
       idContacto int NOT NULL PRIMARY KEY IDENTITY(1,1),
       nombre  varchar(80),
       correo  varchar(80),
       descripcion varchar(450),
       
);

INSERT INTO Users VALUES('Andr�s', 'D�az', 'andres@gmail.com', 'ad2001',1);

INSERT INTO Products VALUES('Estanter�a de 4 niveles para oficina, ba�o, sala de estar',
'F�cil de montar y limpiar: la estanter�a viene con instrucciones detalladas e ilustradas y piezas numeradas; todos los accesorios y herramientas necesarios para el montaje est�n incluidos para un montaje sin preocupaciones. Como el estante no se ensuciar� f�cilmente, es muy f�cil de mantener. Y simplemente utiliza un pa�o h�medo para limpiar el estante impermeable cuando est� sucio.
','Blissun',' 68.99 ','Negro','13.4 x 22 x 54','Metal, Madera', 'Estanteria','3', 'https://spacedecor2021.blob.core.windows.net/productsimage/ProductoImg2.JPG' );

INSERT INTO ProductsImg VALUES(1,'https://spacedecor2021.blob.core.windows.net/productsimage/ProductoImg.JPG');