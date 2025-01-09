-- Create dailyActivity_merged table with primary key
CREATE TABLE public.dailyActivity_merged
(
    Id BIGINT,
    ActivityDate TIMESTAMP,
    PRIMARY KEY (Id, ActivityDate),
    TotalSteps INT,
    TotalDistance NUMERIC,
    TrackerDistance NUMERIC,
    LoggedActivitiesDistance NUMERIC,
    VeryActiveDistance NUMERIC,
    ModeratelyActiveDistance NUMERIC,
    LightActiveDistance NUMERIC,
    SedentaryActiveDistance NUMERIC,
    VeryActiveMinutes INT,
    FairlyActiveMinutes INT,
    LightlyActiveMinutes INT,
    SedentaryMinutes INT,
    Calories INT
);

-- Create dailyCalories_merged table with primary key and foreign keys
CREATE TABLE public.dailyCalories_merged
(
    Id BIGINT,
    ActivityDay TIMESTAMP,
    PRIMARY KEY (Id, ActivityDay),
    Calories INT,
    FOREIGN KEY (Id, ActivityDay) REFERENCES public.dailyActivity_merged (Id, ActivityDate)
);

-- Create dailyIntensities_merged table with primary key and foreign keys
CREATE TABLE public.dailyIntensities_merged
(
    Id BIGINT,
    ActivityDay TIMESTAMP,
    PRIMARY KEY (Id, ActivityDay),
    SedentaryMinutes INT,
    LightlyActiveMinutes INT,
    FairlyActiveMinutes INT,
    VeryActiveMinutes INT,
    SedentaryActiveDistance NUMERIC,
    LightActiveDistance NUMERIC,
    ModeratelyActiveDistance NUMERIC,
    VeryActiveDistance NUMERIC,
    FOREIGN KEY (Id, ActivityDay) REFERENCES public.dailyActivity_merged (Id, ActivityDate)
);

-- Create heartrate table with a primary key and foreign keys
CREATE TABLE public.avgheartrate
(
    Id BIGINT,
    Day TIMESTAMP,
    PRIMARY KEY (Id, Day),
    Value INT,
    FOREIGN KEY (Id, Day) REFERENCES public.dailyActivity_merged (Id, ActivityDate)
);

-- Create public.sleepDay table with a primary key and foreign keys
CREATE TABLE public.sleepDay_cleaned
(
    Id BIGINT,
    SleepDay TIMESTAMP,
    PRIMARY KEY (Id, SleepDay),
    TotalSleepRecords INT,
    TotalMinutesAsleep INT,
    TotalTimeInBed INT,
    FOREIGN KEY (Id, SleepDay) REFERENCES public.dailyActivity_merged (Id, ActivityDate)
);

-- Set ownership of the tables to the postgres user
ALTER TABLE public.dailyActivity_merged OWNER to postgres;
ALTER TABLE public.dailyCalories_merged OWNER to postgres;
ALTER TABLE public.dailyIntensities_merged OWNER to postgres;
ALTER TABLE public.avgheartrate OWNER to postgres;
ALTER TABLE public.sleepDay_cleaned OWNER to postgres;

-- Create indexes on foreign key columns for better performance
CREATE INDEX idx_Calories_id ON public.dailyCalories_merged (Id, ActivityDay);
CREATE INDEX idx_Intensities_id ON public.dailyIntensities_merged (Id, ActivityDay);
CREATE INDEX idx_heartrate_id ON public.avgheartrate (Id, Day);
CREATE INDEX idx_sleep_id ON public.sleepDay_cleaned (Id, SleepDay);
