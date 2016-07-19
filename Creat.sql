use MyNetBookStore
create table tb_UsrInfo(
   UsrId				int					 identity,
   UsrName              varchar(20)          not null,
   IsManagement			bit					 not null,
   constraint PK_TB_USRINFO primary key(UsrId)
)

create table tb_AdminInfo(
   AdminId              int                  identity,
   UsrId				int					 not null,
   Pwd                  varchar(20)          not null,
   Name                 varchar(20)          not null,
   AdminFlag            int                  not null,
   Email				varchar(20)          not null,
   LogTime				datetime             not null,
   constraint PK_TB_ADMININFO primary key(AdminId)
)

create table tb_CustomerInfo(
   CustomerId           int                  identity,
   UsrId				int					 not null,
   Pwd                  varchar(20)          not null,
   Name                 varchar(20)          not null,
   CustomerQues         varchar(20)          null,
   CustomerAns          varchar(20)          null,
   LogTime				datetime             not null,
   IsVIP				bit					 not null,
   constraint PK_TB_CUSTOMERINFO primary key(CustomerId)
)

create table tb_BookInfo(
   BookId               int                  identity,
   BookName             varchar(20)          not null,
   BookAuTa             varchar(10)          not null,
   BookType				varchar(10)          not null,
   BookPress            varchar(20)          not null,
   BookPackstyle        varchar(20)          not null,
   BookIsbn             varchar(20)          not null,
   BookPubDate          datetime             not null,
   BookOutline          varchar(200)         not null,
   BookPic              varchar(20)          not null,
   BookStoretime        datetime             not null,
   BookMprice           money                not null,
   BookVIPprice         money                not null,
   BookDiscount         decimal				 not null,
   BookLookmount        int                  not null,
   BookStoremount       int                  not null,
   constraint PK_TB_BOOKINFO primary key(BookId)
)

create table tb_Order(
   OrderId              int                  identity,
   CustomerId           int                  not null,
   ReceiverName         varchar(10)          not null,
   ReceiverAddr         varchar(50)          not null,
   ReceiverTel          varchar(20)          not null,
   CustomerEmail		varchar(20)          not null,
   CustomerPostcode		varchar(10)          not null,
   OrderDate            datetime             not null,
   TotalPrice           money                not null,
   PayMethod            varchar(100)         not null,
   PostMethod           varchar(100)         not null,
   AllOrderMount        int                  not null,
   Message              varchar(100),
   Memo                 varchar(100),
   constraint PK_TB_ORDER primary key(OrderId)
)

create table tb_OrderDetail(
   OrderDetailId        int			         identity,
   OrderId              int		             not null,
   BookId               int                  not null,
   OrderMount           int                  not null,
   SingleTotalPrice     money                not null,
   PostStatus           bit                  not null,
   RecevStatus          bit                  not null,
   constraint PK_TB_ORDERDETAIL primary key(OrderDetailId)
)

create table tb_Comment(
   CommentId            int                  identity,
   BookId               int                  not null,
   CustomerId           int                  not null,
   CustomerName         varchar(20)          not null,
   CommentDate          datetime             not null,
   CommentContent       varchar(100)         not null,
   CommentFlag          bit                  not null,
   constraint PK_TB_COMMENT primary key(CommentId)
)
