--4.1 no
/*
It is referenced to in the other tables*\

--4.2
/*
No because of a violation of foreign key constraints
*\
--4.3
/*
Responses:
CREATE TABLE state_info (
    state_id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for each state
    state_name VARCHAR(100) NOT NULL,         -- Full state name (e.g., 'Virginia')
    state_abbr VARCHAR(2) NOT NULL,           -- State abbreviation (e.g., 'VA')
    fips_code INT NOT NULL                    -- FIPS code (e.g., 51 for Virginia)
);
For other table:
CREATE TABLE state_population (
    population_id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for population record
    state_id INT,                                 -- Foreign key referencing state_info table
    year YEAR NOT NULL,                           -- Year of population data
    population BIGINT NOT NULL,                   -- Population of the state in that year
    FOREIGN KEY (state_id) REFERENCES state_info(state_id)  -- Links to state_info
);
Answer:
It did not create the name table correctly as it stored too many unneeded variables. It also never used the term FIPS nor did it make it a 
primary key.
*\
--4.6
/*
It did correctly identify the table as a ER diagram, but didnt correctly name the variables but labeled them correctly.
*\
SELECT state_name, income
FROM state_income
ORDER BY income DESC
LIMIT 1;
/*
It did not work at all as it keeps on trying to say state_name instead of name
*\
--4.7
/*
Prompt written: assume one of the states listed is "Virginia" (case sensitive) produce SQL code that 
would calculate the population growth rate for Virginia over the past 5 years
response: WITH virginia_pop AS (
    SELECT population, year
    FROM state_population
    WHERE state_name = 'Virginia'
    ORDER BY year DESC
    LIMIT 5
)
SELECT 
    ( (MAX(population) - MIN(population)) / MIN(population) ) * 100 AS growth_rate_percentage
FROM virginia_pop;
despite an attempt to edit the code I could not get it to work
despite CHATGPT having the names of the tables and columns it couldn't come up with an adequate answer
*\
--4.8
/*
It does not create accurate responses, but will create increasingly more accurate responses based on
the level of detail you include in the prompt. If my prompts were more detailed I'm sure the code wouldve worked.
*\
