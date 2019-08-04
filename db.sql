CREATE TABLE
IF NOT EXISTS article
(
    id int AUTO_INCREMENT primary key,
    name varchar(255),
    category_id int,
    avatar varchar(255),
    description varchar(255),
    status varchar(255),
    content varchar(255),
    datecreate int,
    seo_title varchar(255),
    seo_description varchar(255),
    seo_keyword varchar(255),
    type varchar(255)
) ENGINE=INNODB;

CREATE TABLE
IF NOT EXISTS category
(
    /**
     * @var integer
     */
    id int AUTO_INCREMENT primary key,
    /**
     * @var string
     */
    name varchar(255),
    /**
     * @var string
     */
    status varchar(255),
    /**
     * @var integer
     */
    datecreate int,
    /**
     * @var integer
     */
    usercreate int,

    avatar varchar(255)
) ENGINE=INNODB;

CREATE TABLE
IF NOT EXISTS project
(
    id int AUTO_INCREMENT primary key,
    name varchar(255),
    contact_email varchar(255),
    contact_person varchar(255),
    target varchar(255),
    video varchar(255),
    avatar varchar(255),
    content varchar(255),
    status int,
    status_display varchar(255),
    contribute_start_time int,
    contribute_end_time int,
    datecreate int,
    usercreate int,
    category_id int,
    description varchar(255),
    raised varchar(255),
    percent_approve int,
    contribute_address varchar(255),
    funding_receipt varchar(255),
    balance int,
    hash varchar(255),
    percent_terminate int,
    percent_consensus int,
    type varchar(255),
    highest_value int,
    highest_address varchar(255),
    winner_user_id int,
    min_value int,
    step_value int,
    token_name varchar(255),
    symbol varchar(255),
    total_supply int
) ENGINE=INNODB;

CREATE TABLE
IF NOT EXISTS project_contribute
(
    id int AUTO_INCREMENT primary key,
    project_id int,
    user_id int,
    project_address varchar(255),
    contribute_address varchar(255),
    datecreate int,
    hash varchar(255),
    value int

) ENGINE=INNODB;

CREATE TABLE
IF NOT EXISTS registry
(
    /**
     * @var integer
     */
    id int,
    /**
     * @var string
     */
    logo varchar(255),
    favicon varchar(255),
    /**
     * @var string
     */
    slogan varchar(255),
    /**
     * @var string
     */
    map varchar(255),
    /**
     * @var string
     */
    link_facebook varchar(255),
    /**
     * @var string
     */
    link_google varchar(255),
    /**
     * @var string
     */
    link_twitter varchar(255),

    /**
     * @var string
     */
    seo_title varchar(255),
    /**
     * @var string
     */
    seo_description varchar(255),
    /**
     * @var string
     */
    seo_keyword varchar(255),
    /**
     * @var string
     */
    hot_line varchar(255),
    /**
     * @var string
     */
    slide varchar(255),
    address varchar(255),
    sale_img varchar(255),
    partner varchar(255),
    script_head varchar(255),
    script_body varchar(255),
    team_support varchar(255)
) ENGINE=INNODB;


CREATE TABLE
IF NOT EXISTS user
(
    id int AUTO_INCREMENT primary key,
    username varchar(255),
    password varchar(255),
    status varchar(255),
    email varchar(255),
    datecreate int,
    role varchar(255),
    fullname varchar(255),
    avatar varchar(255),
    eth_address varchar(255)
) ENGINE=INNODB;

CREATE TABLE
IF NOT EXISTS user_approve
(
    id int AUTO_INCREMENT primary key,
    user_id int,
    project_id int,
    withdraw_id int,
    hash varchar(255),
    datecreate int
) ENGINE=INNODB;

CREATE TABLE
IF NOT EXISTS withdraw
(
    id int AUTO_INCREMENT primary key,
    amount int,
    project_id int,
    caption varchar(255),
    datecreate int,
    usercreate int,
    status varchar(255),
    hash varchar(255),
    vote_start_time bigint,
    vote_end_time bigint
) ENGINE=INNODB;