CREATE SCHEMA IF NOT EXISTS crm;

CREATE TABLE IF NOT EXISTS crm.recruiter (
	id IDENTITY NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	PRIMARY KEY(id)
);

INSERT INTO crm.recruiter VALUES (1, 'Walden', 'Schmidt');

CREATE TABLE IF NOT EXISTS crm.process (
	id IDENTITY NOT NULL,
	code VARCHAR(10) NOT NULL,
	description VARCHAR(100) NOT NULL,
	recruiter_id BIGINT NOT NULL NOT NULL,
	FOREIGN KEY (recruiter_id) REFERENCES crm.recruiter(id),
	PRIMARY KEY(id)
);

INSERT INTO crm.process VALUES (1, 'PR1', 'Process description 1.', 1);
INSERT INTO crm.process VALUES (2, 'PR2', 'Process description 2.', 1);
INSERT INTO crm.process VALUES (3, 'PR3', 'Process description 3.', 1);
INSERT INTO crm.process VALUES (4, 'PR4', 'Process description 4.', 1);



CREATE TABLE IF NOT EXISTS crm.step (
	id IDENTITY NOT NULL,
	code VARCHAR(10) NOT NULL,
	name VARCHAR(100) NOT NULL,
	PRIMARY KEY(id)
);

INSERT INTO crm.step VALUES (1, 'ISC', 'Initial Screening');
INSERT INTO crm.step VALUES (2, 'WT', 'Written Test');
INSERT INTO crm.step VALUES (3, 'HI', 'HR Interview');
INSERT INTO crm.step VALUES (4, 'LC', 'Live Coding');
INSERT INTO crm.step VALUES (5, 'TI', 'Technical Interview');


CREATE TABLE IF NOT EXISTS crm.job_category (
	id IDENTITY NOT NULL,
	code VARCHAR(10) NOT NULL,
	name VARCHAR(100) NOT NULL,
	description VARCHAR(max),
	PRIMARY KEY(id)
);

INSERT INTO crm.job_category VALUES (1, 'IT', 'Information technology', 'Information technology description.');
INSERT INTO crm.job_category VALUES (2, 'MG', 'Management', 'Management description.');

CREATE TABLE IF NOT EXISTS crm.job_position (
	id IDENTITY NOT NULL,
	code VARCHAR(10) NOT NULL,
	name VARCHAR(100) NOT NULL,
	description VARCHAR(max),
	PRIMARY KEY(id)
);

INSERT INTO crm.job_position VALUES (1, 'QA', 'Quality assurance tester', 'Quality assurance testers are technicians or engineers who check software products to see if they are up to industry standards and free of any issues.');
INSERT INTO crm.job_position VALUES (2, 'DA', 'Database administrator', 'Database administrators employ specialized software to organize and keep track of data.');
INSERT INTO crm.job_position VALUES (3, 'SI', 'Software engineer', 'Software engineers apply their knowledge of mathematics and computer science to create and improve new software.');
INSERT INTO crm.job_position VALUES (4, 'DS', 'Data scientist', 'A data scientist analyzes and organizes data to determine trends that can influence business decisions.');
INSERT INTO crm.job_position VALUES (5, 'HR', 'Human resources advisor', 'HR advisors oversee the human resources administrative procedures in a company and ensure that labor policies are implemented.');


CREATE TABLE IF NOT EXISTS crm.job_platform (
	id IDENTITY NOT NULL,
	code VARCHAR(10) NOT NULL,
	name VARCHAR(100) NOT NULL,
	description VARCHAR(max),
	PRIMARY KEY(id)
);

INSERT INTO crm.job_platform VALUES (1, 'FB', 'Facebook', 'Ads on Facebook.');
INSERT INTO crm.job_platform VALUES (2, 'IND', 'Online job board', 'Online job board description.');
INSERT INTO crm.job_platform VALUES (3, 'NP', 'Newspaper', 'Ads in newspapers.');

CREATE TABLE IF NOT EXISTS crm.organization (
	id IDENTITY NOT NULL,
	code VARCHAR(10) NOT NULL,
	name VARCHAR(100) NOT NULL,
	description VARCHAR(max),
	PRIMARY KEY(id)
);

INSERT INTO crm.organization VALUES (1, 'NRD', 'Nordeus', 'We are a mobile games developer based in Belgrade, Serbia. We’re fueled by the passion and creativity of more than 170 people from 20 countries. Together, we build games that bring the joy of winning, to the lives of millions.');
INSERT INTO crm.organization VALUES (2, 'L9', 'Levi9', 'Levi9 IT Services is a European provider of nearshore software engineering services with development and delivery centers across Serbia, Ukraine and Romania and headquarters in Amsterdam.');
INSERT INTO crm.organization VALUES (3, 'MSOFT', 'Microsoft', 'Microsoft Corporation is an American multinational technology corporation which produces computer software, consumer electronics, personal computers, and related services.');

CREATE TABLE IF NOT EXISTS crm.job (
	id IDENTITY NOT NULL,
	code VARCHAR(10) NOT NULL,
	name VARCHAR(100) NOT NULL,
	description VARCHAR(max),
	date_published DATE NOT NULL,
	job_start_date DATE,
	no_of_vacancies INT,
	job_category_id BIGINT NOT NULL,
	job_position_id BIGINT NOT NULL,
	job_platform_id BIGINT NOT NULL,
	organization_id BIGINT NOT NULL,
	process_id BIGINT NOT NULL,
	FOREIGN KEY (job_category_id) REFERENCES crm.job_category(id),
	FOREIGN KEY (job_position_id) REFERENCES crm.job_position(id),
	FOREIGN KEY (job_platform_id) REFERENCES crm.job_platform(id),
	FOREIGN KEY (organization_id) REFERENCES crm.organization(id),
	FOREIGN KEY (process_id) REFERENCES crm.process(id),
	PRIMARY KEY(id)
);

INSERT INTO crm.job VALUES (1, 'QAI', 'QA Automation Engineer', 'Implementation and maintenance of test scripts for different projects using given automation frameworks / tools.', CURRENT_DATE(), DATEADD('MONTH',1, CURRENT_DATE), 1, 1, 1, 2, 2, 1);
INSERT INTO crm.job VALUES (2, 'QAMT', 'QA Manual Tester', 'Define requirements for testing by interacting with the development team.', CURRENT_DATE(), DATEADD('MONTH',1, CURRENT_DATE), 1, 1, 1, 2, 2, 1);
INSERT INTO crm.job VALUES (3, 'DSE', 'Database Systems Expert', 'Maintain several hundred of databases across the region.',CURRENT_DATE(), DATEADD('MONTH',2, CURRENT_DATE), 2, 1, 2, 2, 1, 2);
INSERT INTO crm.job VALUES (4, 'SFS', 'Senior Full Stack Social Networking Engineer', 'Work on the next generation of social network, a platform dedicated to gamers that includes gamification, social network support, machine learning relevance algorithms, beautiful apps and more.', CURRENT_DATE(), DATEADD('MONTH',2, CURRENT_DATE), 2, 1, 3, 2, 3, 3);
INSERT INTO crm.job VALUES (5, 'JDE', 'Junior Data Engineer', 'Whether in the cloud or in a data center on-premise: you master the data world and support our clients in making their data fit for business or organizational use.', CURRENT_DATE(), DATEADD('MONTH',3, CURRENT_DATE), 3, 1, 4, 2, 3, 4);



CREATE TABLE IF NOT EXISTS crm.applicant (
	id IDENTITY NOT NULL,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	phone VARCHAR(100),
	PRIMARY KEY(id)
);

INSERT INTO crm.applicant VALUES (1, 'Charlie', 'Harper', 'charlieharper@email.com', '+13106517777');
INSERT INTO crm.applicant VALUES (2, 'Alan', 'Harper', 'alanharper@email.com', '+13105846305');
INSERT INTO crm.applicant VALUES (3, 'Judith', 'Harper-Melnick', 'judithmelnick@email.com', '+13101575248');
INSERT INTO crm.applicant VALUES (4, 'Jake', 'Harper', 'jakeharper@email.com', '+13101237438');
INSERT INTO crm.applicant VALUES (5, 'Herbert', 'Melnick', 'herbertmelnick@email.com', '+13109520856');

CREATE TABLE IF NOT EXISTS crm.document (
    id IDENTITY NOT NULL,
    name VARCHAR(100) NOT NULL,
    document BINARY(500000),
    url VARCHAR(200),
    last_update TIMESTAMP NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO crm.document (id, name, document, last_update) VALUES (1, 'Charlie Harper CV', FILE_READ('classpath:db/documents/Charlie_Harper_CV.pdf'), CURRENT_TIMESTAMP());
INSERT INTO crm.document (id, name, url, last_update) VALUES (2, 'Alan Harper CV', 'https://v1.overleaf.com/latex/templates/receive/dbzynfgjmxqy.pdf', CURRENT_TIMESTAMP());

CREATE TABLE IF NOT EXISTS crm.application (
    id IDENTITY NOT NULL,
    date_of_application DATE NOT NULL,
    education CHARACTER LARGE OBJECT,
    experience CHARACTER LARGE OBJECT,
    other_info CHARACTER LARGE OBJECT,
    job_id BIGINT NOT NULL,
    applicant_id BIGINT NOT NULL,
    FOREIGN KEY (job_id) REFERENCES crm.job(id),
    FOREIGN KEY (applicant_id) REFERENCES crm.applicant(id),
    PRIMARY KEY(id)
);

INSERT INTO crm.application VALUES (1, CURRENT_DATE(),
                                 'DIGITAL MARKETING BACHELOR, 2015 - 2017, Learn how to make sales thatcapture the attention of your targetaudience visually.',
                                 'GINYARD INTERNATIONAL CO, 2020 - 2021, Schedule posts to social media.,Write concepts and ideas that will beuploaded to social media.',
                                 'I am a copywriter, I am incharge of creating and writingdigital marketing creativecontent, which can inform theaudience.',
                                 4, 1);
INSERT INTO crm.application VALUES (2, CURRENT_DATE(),
                                 'School of Engineering, BSC IN MECHANICAL ENGINEERING',
                                 'Technology Company AG, SYSTEMS ENGINEER, Technology Company AG, INTERNSHIP AS TEST ENGINEER ',
                                 'HOBBIES Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                                 3, 2);

CREATE TABLE IF NOT EXISTS crm.application_document (
    id IDENTITY NOT NULL,
    document_id BIGINT NOT NULL,
    application_id BIGINT NOT NULL,
    FOREIGN KEY (document_id) REFERENCES crm.document(id),
    FOREIGN KEY (application_id) REFERENCES crm.application(id),
    PRIMARY KEY(id)
);

INSERT INTO crm.application_document VALUES (1, 1, 1);
INSERT INTO crm.application_document VALUES (2, 2, 2);

CREATE TABLE IF NOT EXISTS crm.test (
    id IDENTITY NOT NULL,
    code VARCHAR(10) NOT NULL,
    duration INT,
    max_score INT NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO crm.test VALUES (1, 'TST1', 90, 100);
INSERT INTO crm.test VALUES (2, 'TST2', 60, 10);

CREATE TABLE IF NOT EXISTS crm.application_test (
    id IDENTITY NOT NULL,
    test_id BIGINT NOT NULL,
    application_id BIGINT NOT NULL,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    FOREIGN KEY (test_id) REFERENCES crm.test(id),
    FOREIGN KEY (application_id) REFERENCES crm.application(id),
    PRIMARY KEY(id)
);

INSERT INTO crm.application_test VALUES (1, 1, 1, '2021-10-12 09:00:00', '2021-10-12 10:00:00');
INSERT INTO crm.application_test VALUES (2, 2, 2, '2022-01-22 09:00:00', '2022-01-22 10:00:00');

CREATE TABLE IF NOT EXISTS crm.answers (
    id IDENTITY NOT NULL,
    application_id BIGINT NOT NULL,
    recruiter_id BIGINT NOT NULL,
    total_grades VARCHAR(10),
    pass BOOLEAN,
    answer_details BIGINT,
    FOREIGN KEY (application_id) REFERENCES crm.application(id),
    FOREIGN KEY (recruiter_id) REFERENCES crm.recruiter(id),
    PRIMARY KEY(id)
);

INSERT INTO crm.answers (id, application_id, recruiter_id, total_grades, pass) VALUES (1, 1, 1, 'AVG', TRUE);
INSERT INTO crm.answers (id, application_id, recruiter_id, total_grades, pass) VALUES (2, 2, 1, 'EXC', TRUE);


CREATE TABLE IF NOT EXISTS crm.interview (
    id IDENTITY NOT NULL,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL,
    application_id BIGINT NOT NULL,
    FOREIGN KEY (application_id) REFERENCES crm.application(id),
    PRIMARY KEY(id)
);

INSERT INTO crm.interview VALUES (1, '2021-10-21 09:00:00', '2021-10-21 10:30:00', 1);
INSERT INTO crm.interview VALUES (2, '2022-02-13 09:00:00', '2022-02-13 10:30:00', 2);

CREATE TABLE IF NOT EXISTS crm.interview_note (
    id IDENTITY NOT NULL,
    notes CHARACTER LARGE OBJECT,
    interview_id BIGINT NOT NULL,
    recruiter_id BIGINT NOT NULL,
    pass BOOLEAN,
    FOREIGN KEY (interview_id) REFERENCES crm.interview(id),
    FOREIGN KEY (recruiter_id) REFERENCES crm.recruiter(id),
    PRIMARY KEY(id)
);

INSERT INTO crm.interview_note (id, interview_id, recruiter_id, pass) VALUES (1, 1, 1, TRUE);
INSERT INTO crm.interview_note (id, interview_id, recruiter_id, pass) VALUES (2, 2, 1, FALSE);

CREATE TABLE IF NOT EXISTS crm.applicant_evaluation (
    id IDENTITY NOT NULL,
    notes CHARACTER LARGE OBJECT,
    recruiter_id BIGINT NOT NULL,
    application_id BIGINT NOT NULL,
    hired BOOLEAN,
    FOREIGN KEY (recruiter_id) REFERENCES crm.recruiter(id),
    FOREIGN KEY (application_id) REFERENCES crm.application(id),
    PRIMARY KEY(id)
);

INSERT INTO crm.applicant_evaluation (id, recruiter_id, application_id, hired) VALUES (1, 1, 1, TRUE);
INSERT INTO crm.applicant_evaluation (id, recruiter_id, application_id, hired) VALUES (2, 1, 2, FALSE);

CREATE TABLE IF NOT EXISTS crm.application_status (
    id IDENTITY NOT NULL,
    stat VARCHAR(200) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO crm.application_status VALUES (1, 'Waiting for decision');
INSERT INTO crm.application_status VALUES (2, 'Decision made');

CREATE TABLE IF NOT EXISTS crm.application_status_change (
    id IDENTITY NOT NULL,
    date_changed TIMESTAMP NOT NULL,
    application_status_id BIGINT NOT NULL,
    application_id BIGINT NOT NULL,
    FOREIGN KEY (application_status_id) REFERENCES crm.application_status(id),
    FOREIGN KEY (application_id) REFERENCES crm.application(id),
    PRIMARY KEY(id)
);

INSERT INTO crm.application_status_change VALUES (1, '2021-10-21 10:30:00', 1, 1);
INSERT INTO crm.application_status_change VALUES (2, '2022-02-13 10:30:00', 2, 2);

