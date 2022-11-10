CREATE TABLE dbo.VIPmembers
(
    member_id int IDENTITY(1,1),
    member_name VARCHAR(200) not NULL,
    member_email VARCHAR(100) NULL,
    member_phone varchar(25) NULL,
    regi_date smalldatetime DEFAULT(GETDATE())
)

INSERT INTO dbo.VIPmembers(member_name, member_email, member_phone)
VALUES('GilDong Hong','gil@naver.com','111-1111-1111')

SELECT * FROM dbo.VIPmembers