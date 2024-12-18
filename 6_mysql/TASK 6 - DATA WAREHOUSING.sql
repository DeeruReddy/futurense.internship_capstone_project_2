create database if not exists sports_dataset;
use sports_database;


CREATE TABLE Player_Details (
    Sl_no INTEGER PRIMARY KEY ,
    Player TEXT,
    Team TEXT,
    Age INTEGER,
    Height REAL,
    Weight REAL
);

CREATE TABLE Player_stats (
 Sl_no INTEGER, 
 Player TEXT, 
 Position TEXT,
 Goals INTEGER,
 Assists INTEGER,
 Yellow_Cards INTEGER,
 Red_Cards INTEGER,
 Pass_Completion_Rate INTEGER,
 Distance_Covered INTEGER,
 Sprints INTEGER,
 Shots_On_Target INTEGER,
 Tackles_Won INTEGER,
 Clean_Sheets INTEGER,
 Season INTEGER,
 PerformanceRatio INTEGER,
 PredictedPerformanceCategory TEXT,
 Pressure_Performance_Impact INTEGER,
 FOREIGN KEY(Sl_no) REFERENCES player_details(Sl_no)
);



CREATE TABLE Training (
    Sl_no INTEGER, 
    Player TEXT, 
    Training_Hours INTEGER,
    Effective_Training INTEGER,
    EffectiveTrainingHours INTEGER,
    Season INTEGER,
    FOREIGN KEY(Sl_no) REFERENCES Player_Details(Sl_no)
);


CREATE TABLE Player_Performance (
    Sl_no INTEGER , 
    Player TEXT, 
    Player_Fatigue INTEGER,
    Match_Pressure INTEGER ,
    Injury_History INTEGER,
    Fatigue_Injury_Correlation INTEGER ,
    Pressure_Performance_Impact INTEGER,
    Season INTEGER,
    PerformanceRatio INTEGER,
    PredictedPerformanceCategory TEXT,
    FatiguePressureInteraction INTEGER,
    PredictedInteractionCategory TEXT,
    FOREIGN KEY(Sl_no) REFERENCES Player_Details(Sl_no)
);


