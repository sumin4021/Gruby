접속정보
-- smp/smp 183.111.253.88 

CREATE DATABASE GRUBY default CHARACTER SET UTF8;

USE GRUBY;

-- 서버에서 root로 접근 후 가능.
GRANT ALL PRIVILEGES ON GRUBY.* TO 'smp'@'%' ;


CREATE TABLE comm_cd_dtl_tbl (
	comm_cd_id VARCHAR(50) NULL DEFAULT NULL COMMENT '공통코드id' COLLATE 'utf8mb3_general_ci',
	comm_cd_val VARCHAR(50) NULL DEFAULT NULL COMMENT '공통코드값' COLLATE 'utf8mb3_general_ci',
	comm_cd_val_nm VARCHAR(50) NULL DEFAULT NULL COMMENT '공통코드이름' COLLATE 'utf8mb3_general_ci',
	comm_cd_val_eng_nm VARCHAR(50) NULL DEFAULT NULL COMMENT '공통코드영문이름' COLLATE 'utf8mb3_general_ci',
	comm_cd_val_desc VARCHAR(50) NULL DEFAULT NULL COMMENT '공통코드설명' COLLATE 'utf8mb3_general_ci',
	prt_seq VARCHAR(50) NULL DEFAULT NULL COMMENT '공통코드순서' COLLATE 'utf8mb3_general_ci',
	eff_sta_dt VARCHAR(50) NULL DEFAULT NULL COMMENT '유효시작일' COLLATE 'utf8mb3_general_ci',
	eff_end_dt VARCHAR(50) NULL DEFAULT NULL COMMENT '유효종료일' COLLATE 'utf8mb3_general_ci',
	audit_id VARCHAR(50) NULL DEFAULT NULL COMMENT '마지막수정자' COLLATE 'utf8mb3_general_ci',
	audit_dtm DATE NULL DEFAULT NULL COMMENT '마지막수정일자'
)
COMMENT='공통코드상세'
COLLATE='utf8mb3_general_ci'
ENGINE=InnoDB
;

CREATE TABLE comm_cd_lst (
	comm_cd_id VARCHAR(50) NULL DEFAULT NULL COMMENT '공통코드id' COLLATE 'utf8mb3_general_ci',
	comm_cd_nm VARCHAR(50) NULL DEFAULT NULL COMMENT '공통코드이름' COLLATE 'utf8mb3_general_ci',
	comm_cd_desc VARCHAR(50) NULL DEFAULT NULL COMMENT '공통코드설명' COLLATE 'utf8mb3_general_ci',
	mid_cd VARCHAR(50) NULL DEFAULT NULL COMMENT '중간코드' COLLATE 'utf8mb3_general_ci',
	cd_leng VARCHAR(50) NULL DEFAULT NULL COMMENT '코드길이' COLLATE 'utf8mb3_general_ci',
	sup_com_cd_id VARCHAR(50) NULL DEFAULT NULL COMMENT '상위코드' COLLATE 'utf8mb3_general_ci',
	cd_cl_cd VARCHAR(50) NULL DEFAULT NULL COMMENT '코드구분' COLLATE 'utf8mb3_general_ci',
	audit_id VARCHAR(50) NULL DEFAULT NULL COMMENT '마지막수정자' COLLATE 'utf8mb3_general_ci',
	audit_dtm DATE NULL DEFAULT NULL COMMENT '마지막수정일자'
)
COMMENT='공통코드리스트'
COLLATE='utf8mb3_general_ci'
ENGINE=InnoDB
;
CREATE TABLE party_cate_grp_tbl (
	cate_id VARCHAR(10) NULL DEFAULT NULL COMMENT '카테고리id' COLLATE 'utf8mb3_general_ci',
	cate_nm VARCHAR(100) NULL DEFAULT NULL COMMENT '카테고리이름' COLLATE 'utf8mb3_general_ci',
	cate_gb VARCHAR(1) NULL DEFAULT NULL COMMENT '카테고리구분(1:명세, 2:상세)' COLLATE 'utf8mb3_general_ci',
	audit_id VARCHAR(50) NULL DEFAULT NULL COMMENT '마지막수정자' COLLATE 'utf8mb3_general_ci',
	audit_dtm DATE NULL DEFAULT NULL COMMENT '마지막수정일자'
)
COMMENT='파티 카테고리'
COLLATE='utf8mb3_general_ci'
ENGINE=InnoDB
;
CREATE TABLE party_person_tbl (
	party_id VARCHAR(20) NULL DEFAULT NULL COMMENT '파티id' COLLATE 'utf8mb3_general_ci',
	party_user_id VARCHAR(10) NULL DEFAULT NULL COMMENT '파티사용자id' COLLATE 'utf8mb3_general_ci',
	party_per_gb VARCHAR(1) NULL DEFAULT NULL COMMENT '파티원구분\r\n1:파티장\r\n2:파티원' COLLATE 'utf8mb3_general_ci',
	party_join_dt VARCHAR(8) NULL DEFAULT NULL COMMENT '파티참가일' COLLATE 'utf8mb3_general_ci',
	party_join_time VARCHAR(8) NULL DEFAULT NULL COMMENT '파티참가시' COLLATE 'utf8mb3_general_ci',
	party_end_dt VARCHAR(8) NULL DEFAULT NULL COMMENT '파티종료일' COLLATE 'utf8mb3_general_ci',
	party_end_time VARCHAR(8) NULL DEFAULT NULL COMMENT '파티참가시' COLLATE 'utf8mb3_general_ci',
	party_join_gb VARCHAR(1) NULL DEFAULT NULL COMMENT '파티참가구분\r\n1:참여신청\r\n2:참여중\r\n3:참여거부\r\n4:탈퇴' COLLATE 'utf8mb3_general_ci',
	audit_id VARCHAR(50) NULL DEFAULT NULL COMMENT '마지막수정자' COLLATE 'utf8mb3_general_ci',
	audit_dtm DATE NULL DEFAULT NULL COMMENT '마지막수정일자'
)
COMMENT='파티원 테이블'
COLLATE='utf8mb3_general_ci'
ENGINE=InnoDB
;
CREATE TABLE party_tbl (
	party_id VARCHAR(20) NULL DEFAULT NULL COMMENT '파티id' COLLATE 'utf8mb3_general_ci',
	party_nm VARCHAR(200) NULL DEFAULT NULL COMMENT '파티이름' COLLATE 'utf8mb3_general_ci',
	party_cre_user_id VARCHAR(10) NULL DEFAULT NULL COMMENT '파티생성자id' COLLATE 'utf8mb3_general_ci',
	party_cre_dt VARCHAR(8) NULL DEFAULT NULL COMMENT '파티생성일' COLLATE 'utf8mb3_general_ci',
	party_cre_time VARCHAR(8) NULL DEFAULT NULL COMMENT '파티생성시' COLLATE 'utf8mb3_general_ci',
	party_end_dt VARCHAR(8) NULL DEFAULT NULL COMMENT '파티종료일' COLLATE 'utf8mb3_general_ci',
	party_end_time VARCHAR(8) NULL DEFAULT NULL COMMENT '파티종료시' COLLATE 'utf8mb3_general_ci',
	party_coment TEXT NULL DEFAULT NULL COMMENT '파티설명' COLLATE 'utf8mb3_general_ci',
	party_per_cnt INT(11) NULL DEFAULT NULL COMMENT '파티모집인원',
	cate_dtl_id VARCHAR(10) NULL DEFAULT NULL COMMENT '카테고리명세id' COLLATE 'utf8mb3_general_ci',
	cate_spc_id VARCHAR(10) NULL DEFAULT NULL COMMENT '카테고리상세id' COLLATE 'utf8mb3_general_ci',
	audit_id VARCHAR(10) NULL DEFAULT NULL COMMENT '마지막수정자' COLLATE 'utf8mb3_general_ci',
	audit_dtm DATE NULL DEFAULT NULL COMMENT '마지막수정일자'
)
COMMENT='파티 테이블'
COLLATE='utf8mb3_general_ci'
ENGINE=InnoDB
;