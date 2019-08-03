CREATE TABLE
IF NOT EXISTS article
(
    id int AUTO_INCREMENT,
    name varchar,
    category_id int,
    avatar varchar,
    description varchar,
    status varchar,
    content varchar,
    datecreate int,
    seo_title varchar,
    seo_description varchar,
    seo_keyword varchar,
    type varchar
) ENGINE=INNODB;

CREATE TABLE
IF NOT EXISTS category
(
    /**
     * @var integer
     */
    id int AUTO_INCREMENT,
    /**
     * @var string
     */
    name varchar,
    /**
     * @var string
     */
    status varchar,
    /**
     * @var integer
     */
    datecreate int,
    /**
     * @var integer
     */
    usercreate int,

    avatar varchar
) ENGINE=INNODB;

CREATE TABLE
IF NOT EXISTS project
(
    id int AUTO_INCREMENT,
    name varchar,
    contact_email varchar,
    contact_person varchar,
    target varchar,
    video varchar,
    avatar varchar,
    content varchar,
    status int,
    status_display varchar,
    contribute_start_time int,
    contribute_end_time int,
    datecreate int,
    usercreate int,
    category_id int,
    description varchar,
    raised varchar,
    percent_approve int,
    contribute_address varchar,
    funding_receipt varchar,
    balance int,
    hash varchar,
    percent_terminate int,
    percent_consensus int,
    type varchar,
    highest_value int,
    highest_address varchar,
    winner_user_id int,
    min_value int,
    step_value int,
    token_name varchar,
    symbol varchar,
    total_supply int
) ENGINE=INNODB;

CREATE TABLE
IF NOT EXISTS project_contribute
(
    id int AUTO_INCREMENT,
    project_id int,
    user_id int,
    project_address varchar,
    contribute_address varchar,
    datecreate int,
    hash varchar,
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
    logo varchar,
    favicon varchar,
    /**
     * @var string
     */
    slogan varchar,
    /**
     * @var string
     */
    map varchar,
    /**
     * @var string
     */
    link_facebook varchar,
    /**
     * @var string
     */
    link_google varchar,
    /**
     * @var string
     */
    link_twitter varchar,

    /**
     * @var string
     */
    seo_title varchar,
    /**
     * @var string
     */
    seo_description varchar,
    /**
     * @var string
     */
    seo_keyword varchar,
    /**
     * @var string
     */
    hot_line varchar,
    /**
     * @var string
     */
    slide varchar,
    address varchar,
    sale_img varchar,
    partner varchar,
    script_head varchar,
    script_body varchar,
    team_support varchar
) ENGINE=INNODB;


CREATE TABLE
IF NOT EXISTS user
(
    id int AUTO_INCREMENT,
    username varchar,
    password varchar,
    status varchar,
    email varchar,
    datecreate int,
    role varchar,
    fullname varchar,
    avatar varchar,
    eth_address varchar
) ENGINE=INNODB;

CREATE TABLE
IF NOT EXISTS user_approve
(
    id int AUTO_INCREMENT,
    user_id int,
    project_id int,
    withdraw_id int,
    hash varchar,
    datecreate int
) ENGINE=INNODB;

CREATE TABLE
IF NOT EXISTS withdraw
(
    id int AUTO_INCREMENT,
    amount int,
    project_id int,
    caption varchar,
    datecreate int,
    usercreate int,
    status varchar,
    hash varchar,
    vote_start_time int,
    vote_end_time int
) ENGINE=INNODB;