-- 유저
INSERT INTO AUTHORITY (CREATED_AT, UPDATED_AT, AUTHORITY_NAME)
values (CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'ROLE_USER');

INSERT INTO AUTHORITY (CREATED_AT, UPDATED_AT, AUTHORITY_NAME)
values (CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'ROLE_ADMIN');

-- ID : nosell@nosell.com
-- PW : nosell
INSERT INTO USER
VALUES
(
    1, CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'nosell@nosell.com', 'nosell_닉네임',
    '$2a$10$ns9gjAMzHcBYVsLg9kHKE.QRs/EtY7L8jFfQsAD9F5Rvvt/jy0MUi',
    '01000000000', 'https://user-images.githubusercontent.com/52563841/108356586-aad44700-722f-11eb-84f9-cff25b5a9c45.png','ACTIVE');


INSERT INTO USER_AUTHORITY (CREATED_AT, UPDATED_AT, AUTHORITY_ID, USER_ID)
VALUES
(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(),1,1);

-- ID : test@test.com
-- PW : test
INSERT INTO USER
VALUES
(
    2, CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'test@test.com', 'test_닉네임',
    '$2a$10$e5Wo93q1kSzWD6ehhvOGLubVwYh9dvibacjrrgMl9t65CtBaR8rPG',
     '01000000000', 'https://user-images.githubusercontent.com/52563841/108356586-aad44700-722f-11eb-84f9-cff25b5a9c45.png','ACTIVE');


INSERT INTO USER_AUTHORITY (CREATED_AT, UPDATED_AT, AUTHORITY_ID, USER_ID)
VALUES
(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(),1,2);

-- ID : kate@kate.com
-- PW : kate
INSERT INTO USER
VALUES
(
    3, CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'kate@kate.com', 'kate_닉네임',
    '$2a$10$oXSC643DxsSawrmoD9115e4RryUnW4kPMqsp1EMKF1Qx8W4qQhIi2',
    '01000000000', 'https://user-images.githubusercontent.com/52563841/108356586-aad44700-722f-11eb-84f9-cff25b5a9c45.png','ACTIVE');


INSERT INTO USER_AUTHORITY (CREATED_AT, UPDATED_AT, AUTHORITY_ID, USER_ID)
VALUES
(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(),1,3);

------------------------------------------------------------------------------------------
--유저 리뷰

INSERT INTO USER_REVIEW (CREATED_AT, UPDATED_AT, BAD, CONTENT, GOOD, STARS, WRITER, WRITER_ID, USER_ID)
VALUES (CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 0, '별로임 by test', 0, 2.0, 'test_닉네임', 2, 1);

INSERT INTO USER_REVIEW (CREATED_AT, UPDATED_AT, BAD, CONTENT, GOOD, STARS, WRITER, WRITER_ID, USER_ID)
VALUES (CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 0, '좋음 by kate', 0, 4.0, 'kate_닉네임', 3, 1);

------------------------------------------------------------------------------------------
--카테고리

--대분류
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '패션의류',0);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '패션잡화',0);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '유아용품',0);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '가구/생활',0);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '취미/컬렉션',0);

INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '디지털/가전',0);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '스포츠/레저',0);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '뷰티/미용',0);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '반려동식물용품',0);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '자동차/공구',0);

INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '도서/굿즈',0);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '기타', 0);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '무료나눔', 0);

--중분류
--패션의류
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '여성의류',1);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '남성의류',1);

--패션잡화
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '신발/가방',2);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '패션잡화',2);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '쥬얼리',2);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '명품',2);

--유아용품
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '출산/육아',3);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '장난감/완구',3);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '유아동의류/잡화',3);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '유아동생활용품',3);

--가구/생활
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '생활용품',4);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '가구/소품DIY',4);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '주방/욕실',4);

--취미/컬렉션
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '골동품/희귀품',5);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'RC카/드론',5);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '피규어/키덜트',5);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '게임/악기',5);

--디지털/가전
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '핸드폰/태블릿',6);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '노트북/PC/주변기기',6);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '카메라/음향기기',6);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '게임/악기',6);

--스포츠/레저
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '여행/숙발',7);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '스포츠용품',7);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '레저용품',7);

--뷰티/미용
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '화장품/향수',8);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '바디/헤어',8);

--반려동식물용품
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '동물용품',9);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '식물용품',9);

--자동차/공구
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '자동차용품',10);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '바이크용품',10);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '공구/안전/산업용품',10);

--도서/굿즈
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '도서/문구',11);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '스타굿즈/티켓',11);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'CD/DVD',11);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '미술용품/상품권',11);

--기타
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '부동산',12);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '건강/의료',12);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '재능/서비스',12);

--무료나눔
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '생활용품',13);
INSERT INTO CATEGORY(CREATED_AT, UPDATED_AT, NAME, PARENT_ID) VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), '식품/기타',13);

------------------------------------------------------------------------------------------
--유저 카테고리
INSERT INTO CATEGORY_USER VALUES
(1, CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 1, 1); --패션의류, nosell@nosell.com

INSERT INTO CATEGORY_USER VALUES
(2, CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 2, 1); --패션잡화, nosell@nosell.com

------------------------------------------------------------------------------------------------------------------------
--상품
-- 1줄(4)
INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'NO_SELL', 'PARCEL', '내용', 10000, 'NEW', 'SALE', '여성의류 팝니다.', 14, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 1, 'https://ccimg.hellomarket.com/images/2021/item/02/25/17/4412489_3221733_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 13000, 'NEW', 'SALE', '남성의류 팝니다.', 15, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 2, 'https://ccimg.hellomarket.com/images/2021/item/02/24/18/4500802_743986_2.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 15000, 'NEW', 'SALE', '신발/가방 팝니다.', 16, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 3, 'https://ccimg.hellomarket.com/images/2021/item/02/25/13/0034005_5250989_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 17000, 'NEW', 'SALE', '패션잡화 팝니다.', 17, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 4, 'https://ccimg.hellomarket.com/images/2021/item/02/25/12/2701932_4066863_1.jpg?size=s4');

-- 2줄(8)
INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'NO_SELL', 'PARCEL', '내용', 10000, 'NEW', 'SALE', '쥬얼리 팝니다.', 18, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 5, 'https://ccimg.hellomarket.com/images/2021/item/02/25/17/4412489_3221733_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 13000, 'NEW', 'SALE', '명품 팝니다.', 19, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 6, 'https://ccimg.hellomarket.com/images/2021/item/02/24/18/4500802_743986_2.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 15000, 'NEW', 'SALE', '출산/육아 팝니다.', 20, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 7, 'https://ccimg.hellomarket.com/images/2021/item/02/25/13/0034005_5250989_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 17000, 'NEW', 'SALE', '장난감/완구/팝니다.', 21, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 8, 'https://ccimg.hellomarket.com/images/2021/item/02/25/12/2701932_4066863_1.jpg?size=s4');

-- 3줄(12)
INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'NO_SELL', 'PARCEL', '내용', 10000, 'NEW', 'SALE', '유아동의류/잡화 팝니다.', 22, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 9, 'https://ccimg.hellomarket.com/images/2021/item/02/25/17/4412489_3221733_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 13000, 'NEW', 'SALE', '유아동생활용품 팝니다.', 23, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 10, 'https://ccimg.hellomarket.com/images/2021/item/02/24/18/4500802_743986_2.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 15000, 'NEW', 'SALE', '생활용품 팝니다.', 24, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 11, 'https://ccimg.hellomarket.com/images/2021/item/02/25/13/0034005_5250989_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 17000, 'NEW', 'SALE', '가구/소품DIY 팝니다.', 25, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 12, 'https://ccimg.hellomarket.com/images/2021/item/02/25/12/2701932_4066863_1.jpg?size=s4');

-- 4줄(16)
INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'NO_SELL', 'PARCEL', '내용', 10000, 'NEW', 'SALE', '주방/욕실 팝니다.', 26, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 13, 'https://ccimg.hellomarket.com/images/2021/item/02/25/17/4412489_3221733_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 13000, 'NEW', 'SALE', '골동품/희귀품 팝니다.', 27, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 14, 'https://ccimg.hellomarket.com/images/2021/item/02/24/18/4500802_743986_2.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 15000, 'NEW', 'SALE', 'RC카/드론 팝니다.', 28, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 15, 'https://ccimg.hellomarket.com/images/2021/item/02/25/13/0034005_5250989_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 17000, 'NEW', 'SALE', '피규어/키덜트 팝니다.', 29, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 16, 'https://ccimg.hellomarket.com/images/2021/item/02/25/12/2701932_4066863_1.jpg?size=s4');

-- 5줄(20)
INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'NO_SELL', 'PARCEL', '내용', 10000, 'NEW', 'SALE', '게임/악기 팝니다.', 30, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 17, 'https://ccimg.hellomarket.com/images/2021/item/02/25/17/4412489_3221733_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 13000, 'NEW', 'SALE', '핸드폰/태블릿 팝니다.', 31, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 18, 'https://ccimg.hellomarket.com/images/2021/item/02/24/18/4500802_743986_2.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 15000, 'NEW', 'SALE', '노트북/PC/주변기기 팝니다.', 32, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 19, 'https://ccimg.hellomarket.com/images/2021/item/02/25/13/0034005_5250989_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 17000, 'NEW', 'SALE', '카메라/음향기기 팝니다.', 33, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 20, 'https://ccimg.hellomarket.com/images/2021/item/02/25/12/2701932_4066863_1.jpg?size=s4');

-- 6줄(24)
INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'NO_SELL', 'PARCEL', '내용', 10000, 'NEW', 'SALE', '게임/악기 팝니다.', 34, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 21, 'https://ccimg.hellomarket.com/images/2021/item/02/25/17/4412489_3221733_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 13000, 'NEW', 'SALE', '여행/숙발 팝니다.', 35, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 22, 'https://ccimg.hellomarket.com/images/2021/item/02/24/18/4500802_743986_2.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 15000, 'NEW', 'SALE', '스포츠용품 팝니다.', 36, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 23, 'https://ccimg.hellomarket.com/images/2021/item/02/25/13/0034005_5250989_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 17000, 'NEW', 'SALE', '레저용품 팝니다.', 37, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 24, 'https://ccimg.hellomarket.com/images/2021/item/02/25/12/2701932_4066863_1.jpg?size=s4');

-- 7줄(28)
INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'NO_SELL', 'PARCEL', '내용', 10000, 'NEW', 'SALE', '화장품/향수 팝니다.', 38, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 25, 'https://ccimg.hellomarket.com/images/2021/item/02/25/17/4412489_3221733_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 13000, 'NEW', 'SALE', '바디/헤어 팝니다.', 39, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 26, 'https://ccimg.hellomarket.com/images/2021/item/02/24/18/4500802_743986_2.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 15000, 'NEW', 'SALE', '동물용품 팝니다.', 40, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 27, 'https://ccimg.hellomarket.com/images/2021/item/02/25/13/0034005_5250989_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 17000, 'NEW', 'SALE', '식물용품 팝니다.', 41, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 28, 'https://ccimg.hellomarket.com/images/2021/item/02/25/12/2701932_4066863_1.jpg?size=s4');

-- 8줄(32)
INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'NO_SELL', 'PARCEL', '내용', 10000, 'NEW', 'SALE', '자동차용품 팝니다.', 42, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 29, 'https://ccimg.hellomarket.com/images/2021/item/02/25/17/4412489_3221733_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 13000, 'NEW', 'SALE', '바이크용품 팝니다.', 43, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 30, 'https://ccimg.hellomarket.com/images/2021/item/02/24/18/4500802_743986_2.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 15000, 'NEW', 'SALE', '공구/안전/산업용품 팝니다.', 44, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 31, 'https://ccimg.hellomarket.com/images/2021/item/02/25/13/0034005_5250989_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 17000, 'NEW', 'SALE', '도서/문구 팝니다.', 45, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 32, 'https://ccimg.hellomarket.com/images/2021/item/02/25/12/2701932_4066863_1.jpg?size=s4');

-- 9줄(36)
INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'NO_SELL', 'PARCEL', '내용', 10000, 'NEW', 'SALE', '자동차용품 팝니다.', 42, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 33, 'https://ccimg.hellomarket.com/images/2021/item/02/25/17/4412489_3221733_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 13000, 'NEW', 'SALE', '바이크용품 팝니다.', 43, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 34, 'https://ccimg.hellomarket.com/images/2021/item/02/24/18/4500802_743986_2.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 15000, 'NEW', 'SALE', '공구/안전/산업용품 팝니다.', 44, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 35, 'https://ccimg.hellomarket.com/images/2021/item/02/25/13/0034005_5250989_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 17000, 'NEW', 'SALE', '도서/문구 팝니다.', 45, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 36, 'https://ccimg.hellomarket.com/images/2021/item/02/25/12/2701932_4066863_1.jpg?size=s4');

-- 10줄(40)
INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'NO_SELL', 'PARCEL', '내용', 10000, 'NEW', 'SALE', '스타굿즈/티켓 팝니다.', 46, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 37, 'https://ccimg.hellomarket.com/images/2021/item/02/25/17/4412489_3221733_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 13000, 'NEW', 'SALE', 'CD/DVD 팝니다.', 47, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 38, 'https://ccimg.hellomarket.com/images/2021/item/02/24/18/4500802_743986_2.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 15000, 'NEW', 'SALE', '미술용품/상품권.', 48, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 39, 'https://ccimg.hellomarket.com/images/2021/item/02/25/13/0034005_5250989_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 17000, 'NEW', 'SALE', '부동산 팝니다.', 49, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 40, 'https://ccimg.hellomarket.com/images/2021/item/02/25/12/2701932_4066863_1.jpg?size=s4');

-- 11줄(44)
INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'NO_SELL', 'PARCEL', '내용', 10000, 'NEW', 'SALE', '건강/의료 팝니다.', 50, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 41, 'https://ccimg.hellomarket.com/images/2021/item/02/25/17/4412489_3221733_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 13000, 'NEW', 'SALE', '재능/서비스 팝니다.', 51, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 42, 'https://ccimg.hellomarket.com/images/2021/item/02/24/18/4500802_743986_2.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 15000, 'NEW', 'SALE', '생활용품 팝니다.', 52, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 43, 'https://ccimg.hellomarket.com/images/2021/item/02/25/13/0034005_5250989_1.jpg?size=s4');

INSERT INTO PRODUCT(CREATED_AT, UPDATED_AT, DEAL_TYPE, DELIVERY_TYPE, DESCRIPTION, PRICE, PRODUCT_STATUS, SALES_STATUS, TITLE, CATEGORY_ID, USER_ID)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 'DIRECT_DEAL', 'PARCEL', '내용', 17000, 'NEW', 'SALE', '식품/기타 팝니다.', 53, 1);
INSERT INTO PRODUCT_IMAGE(CREATED_AT, UPDATED_AT, PRODUCT_ID, IMAGE_URL)
VALUES(CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), 44, 'https://ccimg.hellomarket.com/images/2021/item/02/25/12/2701932_4066863_1.jpg?size=s4');