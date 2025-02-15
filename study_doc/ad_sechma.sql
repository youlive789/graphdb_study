create table advertiser(
    id bigint AUTO_INCREMENT primary key,
    `name` varchar(255) not null,
    email varchar(255) not null
    isDeleted tinyint default 0 not null
);

create table campaign(
    id bigint AUTO_INCREMENT primary key,
    `name` varchar(255) not null,
    advertiserId bigint not null,
    budget bigint not null,
    isDeleted tinyint default 0 not null,
    createdAt datetime not null,
    updatedAt datetime not null
);

create table adGroup(
    id bigint AUTO_INCREMENT primary key,
    campaignId bigint not null,
    `name` varchar(255) not null,
    isDeleted tinyint default 0 not null,
    startTime datetime not null,
    endTime datetime not null,
    createdAt datetime not null,
    updatedAt datetime not null
);

create table ad(
    id bigint AUTO_INCREMENT primary key,
    adGroupId bigint not null,
    `name` varchar(255) not null,
    productId bigint not null,
    isDeleted tinyint default 0 not null,
    startTime datetime not null,
    endTime datetime not null,
    createdAt datetime not null,
    updatedAt datetime not null
);

create table advertiserLevelPerformance(
    id bigint AUTO_INCREMENT primary key,
    targetDate varchar(255) not null,
    advertiserId bigint not null,
    totalBudget bigint not null,
    totalGMV double not null,
    adGMV double not null,
    ROAS double not null,
    adPenetrationRate double not null
);

create table campaignLevelPerformance(
    id bigint AUTO_INCREMENT primary key,
    targetDate varchar(255) not null,
    campaignId bigint not null,
    totalBudget bigint not null,
    totalGMV double not null,
    adGMV double not null,
    ROAS double not null,
    adPenetrationRate double not null
);

create table adLevelPerformance(
    id bigint AUTO_INCREMENT primary key,
    targetDate varchar(255) not null,
    adId bigint not null,
    totalBudget bigint not null,
    totalGMV double not null,
    adGMV double not null,
    ROAS double not null,
    adPenetrationRate double not null
);