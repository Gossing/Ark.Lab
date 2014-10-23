CREATE TABLE `knormaluser`.`wmp_user` (
  `user_id`   VARCHAR( 16 ) NOT NULL COMMENT '사용자ID',
  `user_pswd` VARCHAR( 64 ) NOT NULL COMMENT '사용자PASS',
  `nick_nm`   VARCHAR( 20 ) NOT NULL COMMENT '별명',
  `email`     VARCHAR( 32 ) NOT NULL COMMENT '이메일',
UNIQUE ( `user_id` ,`email` )
)
ENGINE = InnoDB
COMMENT = '사용자 정보';


CREATE TABLE `knormaluser`.`wmp_moneyio` (
  `user_id`   VARCHAR( 16 )   NOT NULL COMMENT '사용자ID',
  `proc_date` DATE            NOT NULL COMMENT '기준일자',
  `io_tp`     VARCHAR( 1 )    NOT NULL COMMENT '처리구분',
  `memo`      VARCHAR( 128 )  NOT NULL COMMENT '내용',
  `amount`    DOUBLE          NOT NULL COMMENT '금액',
  `card_tp`   VARCHAR( 1 )    NOT NULL COMMENT '카드구분',
  `card_id`   VARCHAR( 6 )    NOT NULL COMMENT '카드ID',
UNIQUE ( `user_id`  )
)
ENGINE = InnoDB
COMMENT = '거래내역' 
